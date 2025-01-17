function out = runNormalizeQuery(varargin)
% runNormalizeQuery : Normalize raw connectivity scores.

[args, help_flag] = get_args(varargin{:});

import mortar.util.Message

if ~help_flag
    out = struct('args', args,...
        'cs_sig', '',...
        'ns_sig', '',...
        'ns_rpt', '',...
        'ns_pert_cell', '',...
        'ns_pert_summary', '',...
        'ns_pcl_cell', '',...
        'ns_pcl_summary', '',...
        'query_info', '');
    
    %% Background filepaths
    bkg_rpt = mortar.compute.Gutc.getBackgroundFiles(args.bkg_path);
    
    assert(~isempty(bkg_rpt.annot_sig),...
        'Required background files for signatures not found at %s',...
        args.bkg_path);
    
    %% normalize raw scores using reference / Touchstone signature distributions
    out.cs_sig = parse_gctx(args.cs);
    if ~isempty(args.col_meta)
        out.cs_sig = annotate_ds(out.cs_sig, args.col_meta, 'dim', 'column');
    end
    % TS signature annotations
    annot_sig = parse_record(bkg_rpt.annot_sig, 'detect_numeric', ...
        false);
    % Use TS signatures as reference
    if isfield(annot_sig, 'is_touchstone')
        Message.debug(args.verbose, '# Using signatures is_touchstone=1 as reference');
        is_ts = strcmp({annot_sig.is_touchstone}, '1');
        sig_ts = {annot_sig(is_ts).sig_id}';
        % Keep sigs from main pert types
        keep_pt = ismember({annot_sig.pert_type}, {'trt_cp', ...
            'trt_sh.cgs', 'trt_oe', 'ctl_vehicle', 'ctl_vector'});
        annot_sig = annot_sig(keep_pt);
        
    else
        Message.debug(args.verbose, '# Using all background signatures as reference');
        sig_ts = {annot_sig.sig_id}';
    end
    
    sig_id = {annot_sig.sig_id}';
    % restrict TS to the annotation space
    sig_ts = intersect(sig_ts, sig_id);
    % restrict results to annotation space
    out.cs_sig = ds_slice(out.cs_sig, 'rid', sig_id);
    out.cs_sig = annotate_ds(out.cs_sig, annot_sig, 'dim', 'row');
    
    Message.debug(args.verbose, '# Normalizing query results relative to reference');
    [out.ns_sig, out.ns_rpt] = ...
        mortar.compute.Gutc.normalizeQueryRef(out.cs_sig, sig_ts);
    % Query metadata
    out.query_info = gctmeta(out.cs_sig);
    % add a query_id field to match the gutc index.txt file
    [out.query_info.query_id] = out.query_info.cid;
    
%     % Compute percentiles if background is available
%     if ~isempty(bkg_rpt.ns2ps_sig)
%         ns2ps_sig = parse_gctx(bkg_rpt.ns2ps_sig);
%         [out.ps_sig, out.ns_sig] = ...
%             mortar.compute.Gutc.scoreToPercentile(out.ns_sig,...
%             ns2ps_sig, 'column');
%     end
    
    %% pert_cell : Aggregate NS rows by pert_id and cell_id
    if ~isempty(bkg_rpt.ns2ps_pert_cell)
        Message.debug(args.verbose, '# Aggregating rows by pert_id, cell_id');
        out.ns_pert_cell = mortar.compute.Gutc.aggregateQuery(out.ns_sig, [],...
            {'pert_id', 'cell_id'}, 'column',...
            args.aggregate_method, args.aggregate_param);
        out.ns_pert_cell = ds_delete_meta(out.ns_pert_cell, 'row', setdiff(out.ns_pert_cell.rhd,...
            {'pert_id', 'pert_iname', 'cell_id', 'pert_type'}));
%         ns2ps_pert_cell = parse_gctx(bkg_rpt.ns2ps_pert_cell);
%         % Compute percentiles
%         [out.ps_pert_cell, out.ns_pert_cell] = ...
%             mortar.compute.Gutc.scoreToPercentile(out.ns_pert_cell,...
%             ns2ps_pert_cell, 'column');
    else
        Message.debug(args.verbose, '# Skipping aggregation of rows by pert_id, cell_id, no bkg provided');
    end
    %% pert_summary: Aggregate NS rows by pert_id
    if ~isempty(bkg_rpt.ns2ps_pert_summary)
        Message.debug(args.verbose, '# Aggregating rows by pert_id');
        out.ns_pert_summary = mortar.compute.Gutc.aggregateQuery(out.ns_pert_cell,...
            [], {'pert_id'}, 'column',...
            args.aggregate_method, args.aggregate_param);
        out.ns_pert_summary = ds_delete_meta(out.ns_pert_summary, 'row', setdiff(out.ns_pert_cell.rhd,...
            {'pert_id', 'pert_iname', 'pert_type'}));
%         ns2ps_pert_summary = parse_gctx(bkg_rpt.ns2ps_pert_summary);
%         [out.ps_pert_summary, out.ns_pert_summary] = ...
%             mortar.compute.Gutc.scoreToPercentile(out.ns_pert_summary,...
%             ns2ps_pert_summary, 'column');
    else
        Message.debug(args.verbose, '# Skipping aggregation of rows by pert_id, no bkg provided');
    end
    %% pcl_cell
    if ~isempty(bkg_rpt.ns2ps_pcl_cell)
        Message.debug(args.verbose, '# Computing PCL results per cell line');
        out.ns_pcl_cell = mortar.compute.Gutc.aggregateSetByCell(...
            out.ns_pert_cell,...
            [],...
            bkg_rpt.pcl_set,...
            'column',...
            'pert_id',...
            args.aggregate_method,...
            args.aggregate_param);
%         ns2ps_pcl_cell = parse_gctx(bkg_rpt.ns2ps_pcl_cell);
%         % Compute percentiles
%         [out.ps_pcl_cell, out.ns_pcl_cell] = mortar.compute.Gutc.scoreToPercentile(...
%             out.ns_pcl_cell,...
%             ns2ps_pcl_cell, 'column');
    else
        Message.debug(args.verbose, '# Skipping computing PCL results per cell line, no bkg provided');
    end
    
  
    %% pcl_summary :
    if ~isempty(bkg_rpt.ns2ps_pcl_summary)
        Message.debug(args.verbose, '# Computing summarized PCL results');
        out.ns_pcl_summary = mortar.compute.Gutc.aggregateSet(...
            out.ns_pert_summary,...
            [],...
            bkg_rpt.pcl_set,...
            'column',...
            'pert_id',...
            args.aggregate_method,...
            args.aggregate_param);
%         ns2ps_pcl_summary = parse_gctx(bkg_rpt.ns2ps_pcl_summary);
%         % Compute percentiles
%         [out.ps_pcl_summary, out.ns_pcl_summary] = ...
%             mortar.compute.Gutc.scoreToPercentile(...
%             out.ns_pcl_summary,...
%             ns2ps_pcl_summary, 'column');
    else
        Message.debug(args.verbose, '# Skipping computing summarized PCL results, no bkg provided');
    end
end
end

function [args, help_flag] = get_args(varargin)

ConfigFile = mortar.util.File.getArgPath(mfilename, mfilename('class'));
opt = struct('prog', mfilename, 'desc', 'Compute GUTC in unmatched mode', 'undef_action', 'ignore');
[args, help_flag ] = mortar.common.ArgParse.getArgs(ConfigFile, opt, varargin{:});

% sanity checks
% assert((isequal(args.es_tail, 'both') && ~isempty(args.uptag) && ~isempty(args.dntag)) ||...
%         (isequal(args.es_tail, 'up') && ~isempty(args.uptag)) ||...
%         (isequal(args.es_tail, 'down') && ~isempty(args.dntag)),...
%         'Invalid query specified');

end
