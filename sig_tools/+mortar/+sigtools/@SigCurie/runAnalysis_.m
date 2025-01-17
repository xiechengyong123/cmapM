function runAnalysis_(obj, varargin)
args = obj.getArgs;
obj.res_ = main(args);
end

function res = main(args)
% Main function
res = struct('args', args, 'query_result', '');
% Note: update args if additional options are added to runCurie
res.query_result = mortar.prism.curie.runCurie('score', args.score,...
                'rank', args.rank,...
                'up', args.up,...
                'down', args.down,...
                'metric', args.metric,...
                'es_tail', args.es_tail,...
                'min_set_size', args.min_set_size,...
                'platform', args.platform,...
                'feature_space', args.feature_space,...
                'sig_meta', args.sig_meta,...
                'query_meta', args.query_meta);            

end
