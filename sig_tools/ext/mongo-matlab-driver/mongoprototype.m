function [methodinfo,structs,enuminfo,ThunkLibName]=mongoprototype
%MONGOPROTOTYPE Create structures to define interfaces found in 'MongoMatlabDriver'.

%This function was generated by loadlibrary.m parser version 1.1.6.37 on Tue Oct 23 21:08:11 2012
%perl options:'MongoMatlabDriver.i -outfile=mongoprototype.m -thunkfile=MongoMatlabDriver_thunk_glnxa64.c -header=MongoMatlabDriver.h'
ival={cell(1,0)}; % change 0 to the actual number of functions to preallocate the data.
structs=[];enuminfo=[];fcnNum=1;
fcns=struct('name',ival,'calltype',ival,'LHS',ival,'RHS',ival,'alias',ival,'thunkname', ival);
MfilePath=fileparts(mfilename('fullpath'));
ThunkLibName=fullfile(MfilePath,'MongoMatlabDriver_thunk_glnxa64');
% void mongo_bson_buffer_create ( struct bson_buffer ** b ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_create'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_bufferPtrPtr'};fcnNum=fcnNum+1;
% void mongo_bson_buffer_free ( struct bson_buffer * b ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_free'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_bufferPtr'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append ( struct bson_buffer * b , char * name , mxArray * value ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_append'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'MATLAB array'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_string ( struct bson_buffer * b , char * name , char * value ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_string'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_binary ( struct bson_buffer * b , char * name , int type , void * value , int len ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringint32voidPtrint32Thunk';fcns.name{fcnNum}='mongo_bson_buffer_append_binary'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'int32', 'voidPtr', 'int32'};fcnNum=fcnNum+1;
% void mongo_bson_oid_gen ( void * oid ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_oid_gen'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'voidPtr'};fcnNum=fcnNum+1;
% const char * mongo_bson_oid_to_string ( void * oid ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_oid_to_string'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'voidPtr'};fcnNum=fcnNum+1;
% void mongo_bson_oid_from_string ( char * s , void * oid ); 
fcns.thunkname{fcnNum}='voidcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_oid_from_string'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'cstring', 'voidPtr'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_oid ( struct bson_buffer * b , char * name , void * value ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_oid'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'voidPtr'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_date ( struct bson_buffer * b , char * name , mxArray * value ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_date'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'MATLAB array'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_null ( struct bson_buffer * b , char * name ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_null'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_regex ( struct bson_buffer * b , char * name , char * pattern , char * options ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringcstringThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_regex'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_code ( struct bson_buffer * b , char * name , char * value ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_code'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_symbol ( struct bson_buffer * b , char * name , char * value ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_symbol'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_codewscope ( struct bson_buffer * b , char * name , char * code , struct bson_ * scope ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_codewscope'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'cstring', 'bson_Ptr'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_timestamp ( struct bson_buffer * b , char * name , int date , int increment ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringint32int32Thunk';fcns.name{fcnNum}='mongo_bson_buffer_append_timestamp'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'int32', 'int32'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_start_object ( struct bson_buffer * b , char * name ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringThunk';fcns.name{fcnNum}='mongo_bson_buffer_start_object'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_finish_object ( struct bson_buffer * b ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_finish_object'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_start_array ( struct bson_buffer * b , char * name ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringThunk';fcns.name{fcnNum}='mongo_bson_buffer_start_array'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_append_bson ( struct bson_buffer * b , char * name , struct bson_ * bs ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_append_bson'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr', 'cstring', 'bson_Ptr'};fcnNum=fcnNum+1;
% void mongo_bson_buffer_to_bson ( struct bson_buffer * b , struct bson_ ** out ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_to_bson'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_bufferPtr', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% void mongo_bson_empty ( struct bson_ ** b ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_empty'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_bson_size ( struct bson_ * b ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_size'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_Ptr'};fcnNum=fcnNum+1;
% int mongo_bson_buffer_size ( struct bson_buffer * b ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_buffer_size'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_bufferPtr'};fcnNum=fcnNum+1;
% void mongo_bson_free ( struct bson_ * b ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_free'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_Ptr'};fcnNum=fcnNum+1;
% int mongo_bson_find ( struct bson_ * b , char * name , struct bson_iterator_ ** i ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_find'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_Ptr', 'cstring', 'bson_iterator_PtrPtr'};fcnNum=fcnNum+1;
% void mongo_bson_iterator_create ( struct bson_ * b , struct bson_iterator_ ** i ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_create'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_Ptr', 'bson_iterator_PtrPtr'};fcnNum=fcnNum+1;
% void mongo_bson_iterator_free ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_free'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% int mongo_bson_iterator_type ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_type'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% int mongo_bson_iterator_next ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_next'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_bson_iterator_key ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_key'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% void mongo_bson_subiterator ( struct bson_iterator_ * i , struct bson_iterator_ ** si ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_subiterator'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_iterator_Ptr', 'bson_iterator_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_bson_iterator_int ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_int'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% mxint64 mongo_bson_iterator_long ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int64voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_long'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int64'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% double mongo_bson_iterator_double ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='doublevoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_double'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_bson_iterator_string ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_string'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% int mongo_bson_iterator_bin_type ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_bin_type'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% int mongo_bson_iterator_bin_len ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_bin_len'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% void mongo_bson_iterator_bin_value ( struct bson_iterator_ * i , void * v ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_bin_value'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_iterator_Ptr', 'voidPtr'};fcnNum=fcnNum+1;
% void mongo_bson_iterator_oid ( struct bson_iterator_ * i , void * oid ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_oid'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_iterator_Ptr', 'voidPtr'};fcnNum=fcnNum+1;
% int mongo_bson_iterator_bool ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_bool'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% mxint64 mongo_bson_iterator_date ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='int64voidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_date'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int64'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_bson_iterator_regex ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_regex'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_bson_iterator_regex_opts ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_regex_opts'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_bson_iterator_code ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_code'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% void mongo_bson_iterator_code_scope ( struct bson_iterator_ * i , struct bson_buffer ** b ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_code_scope'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'bson_iterator_Ptr', 'bson_bufferPtrPtr'};fcnNum=fcnNum+1;
% int mongo_bson_iterator_timestamp ( struct bson_iterator_ * i , int * increment ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_iterator_timestamp'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'bson_iterator_Ptr', 'int32Ptr'};fcnNum=fcnNum+1;
% mxArray * mongo_bson_array_value ( struct bson_iterator_ * i ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_bson_array_value'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='MATLAB array'; fcns.RHS{fcnNum}={'bson_iterator_Ptr'};fcnNum=fcnNum+1;
% void mmongo_create ( struct mongo_ ** conn ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mmongo_create'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_PtrPtr'};fcnNum=fcnNum+1;
% void mmongo_connect ( struct mongo_ * conn , char * host ); 
fcns.thunkname{fcnNum}='voidvoidPtrcstringThunk';fcns.name{fcnNum}='mmongo_connect'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring'};fcnNum=fcnNum+1;
% int mmongo_is_connected ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_is_connected'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% int mongo_is_master ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_is_master'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% void mmongo_destroy ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mmongo_destroy'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% void mmongo_replset_init ( struct mongo_ * conn , char * name ); 
fcns.thunkname{fcnNum}='voidvoidPtrcstringThunk';fcns.name{fcnNum}='mmongo_replset_init'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring'};fcnNum=fcnNum+1;
% void mongo_add_seed ( struct mongo_ * conn , char * host ); 
fcns.thunkname{fcnNum}='voidvoidPtrcstringThunk';fcns.name{fcnNum}='mongo_add_seed'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring'};fcnNum=fcnNum+1;
% int mmongo_replset_connect ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_replset_connect'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% void mmongo_disconnect ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mmongo_disconnect'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% int mmongo_reconnect ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_reconnect'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% int mmongo_check_connection ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_check_connection'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% void mongo_set_timeout ( struct mongo_ * conn , int timeout ); 
fcns.thunkname{fcnNum}='voidvoidPtrint32Thunk';fcns.name{fcnNum}='mongo_set_timeout'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_Ptr', 'int32'};fcnNum=fcnNum+1;
% int mongo_get_timeout ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_get_timeout'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% const char * mmongo_get_primary ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mmongo_get_primary'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% int mmongo_get_socket ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_get_socket'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% mxArray * mongo_get_hosts ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_get_hosts'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='MATLAB array'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% int mmongo_get_err ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_get_err'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% mxArray * mongo_get_databases ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_get_databases'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='MATLAB array'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% mxArray * mongo_get_database_collections ( struct mongo_ * conn , char * db ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrcstringThunk';fcns.name{fcnNum}='mongo_get_database_collections'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='MATLAB array'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring'};fcnNum=fcnNum+1;
% int mongo_rename ( struct mongo_ * conn , char * from_ns , char * to_ns ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringThunk';fcns.name{fcnNum}='mongo_rename'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% int mmongo_insert ( struct mongo_ * conn , char * ns , struct bson_ * b ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mmongo_insert'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr'};fcnNum=fcnNum+1;
% int mmongo_update ( struct mongo_ * conn , char * ns , struct bson_ * criteria , struct bson_ * objNew , int flags ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='mmongo_update'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr', 'bson_Ptr', 'int32'};fcnNum=fcnNum+1;
% int mmongo_remove ( struct mongo_ * conn , char * ns , struct bson_ * criteria ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mmongo_remove'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr'};fcnNum=fcnNum+1;
% int mmongo_find_one ( struct mongo_ * conn , char * ns , struct bson_ * query , struct bson_ * fields , struct bson_ ** result ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mmongo_find_one'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr', 'bson_Ptr', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mmongo_find ( struct mongo_ * conn , char * ns , struct bson_ * query , struct bson_ * sort , struct bson_ * fields , int limit , int skip , int options , struct mongo_cursor_ ** result ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrvoidPtrvoidPtrint32int32int32voidPtrThunk';fcns.name{fcnNum}='mmongo_find'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr', 'bson_Ptr', 'bson_Ptr', 'int32', 'int32', 'int32', 'mongo_cursor_PtrPtr'};fcnNum=fcnNum+1;
% int mmongo_cursor_next ( struct mongo_cursor_ * cursor ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_cursor_next'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_cursor_Ptr'};fcnNum=fcnNum+1;
% int mongo_cursor_value ( struct mongo_cursor_ * cursor , struct bson_ ** value ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_cursor_value'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_cursor_Ptr', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% void mongo_cursor_free ( struct mongo_cursor_ * cursor ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_cursor_free'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'mongo_cursor_Ptr'};fcnNum=fcnNum+1;
% double mmongo_count ( struct mongo_ * conn , char * ns , struct bson_ * query ); 
fcns.thunkname{fcnNum}='doublevoidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mmongo_count'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr'};fcnNum=fcnNum+1;
% int mongo_index_create ( struct mongo_ * conn , char * ns , struct bson_ * key , int options , struct bson_ ** out ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrint32voidPtrThunk';fcns.name{fcnNum}='mongo_index_create'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr', 'int32', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_add_user ( struct mongo_ * conn , char * db , char * user , char * password ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringcstringThunk';fcns.name{fcnNum}='mongo_add_user'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% int mongo_authenticate ( struct mongo_ * conn , char * db , char * user , char * password ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringcstringThunk';fcns.name{fcnNum}='mongo_authenticate'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% int mongo_command ( struct mongo_ * conn , char * db , struct bson_ * cmd , struct bson_ ** result ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_command'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_Ptr', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_get_last_err ( struct mongo_ * conn , char * db , struct bson_ ** err ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_get_last_err'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_get_prev_err ( struct mongo_ * conn , char * db , struct bson_ ** err ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_get_prev_err'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mmongo_get_server_err ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mmongo_get_server_err'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% char * mmongo_get_server_err_string ( struct mongo_ * conn ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mmongo_get_server_err_string'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'mongo_Ptr'};fcnNum=fcnNum+1;
% int mongo_drop_database ( struct mongo_ * conn , char * db ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringThunk';fcns.name{fcnNum}='mongo_drop_database'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring'};fcnNum=fcnNum+1;
% int mongo_drop ( struct mongo_ * conn , char * ns ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringThunk';fcns.name{fcnNum}='mongo_drop'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring'};fcnNum=fcnNum+1;
% int mongo_gridfs_create ( struct mongo_ * conn , char * db , char * prefix , struct gridfs_ ** gfs ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfs_create'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'mongo_Ptr', 'cstring', 'cstring', 'gridfs_PtrPtr'};fcnNum=fcnNum+1;
% void mongo_gridfs_destroy ( struct gridfs_ * gfs ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfs_destroy'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'gridfs_Ptr'};fcnNum=fcnNum+1;
% int mongo_gridfs_store_file ( struct gridfs_ * gfs , char * filename , char * remoteName , char * contentType ); 
fcns.thunkname{fcnNum}='int32voidPtrcstringcstringcstringThunk';fcns.name{fcnNum}='mongo_gridfs_store_file'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfs_Ptr', 'cstring', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% void mongo_gridfs_remove_file ( struct gridfs_ * gfs , char * remoteName ); 
fcns.thunkname{fcnNum}='voidvoidPtrcstringThunk';fcns.name{fcnNum}='mongo_gridfs_remove_file'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'gridfs_Ptr', 'cstring'};fcnNum=fcnNum+1;
% int mongo_gridfs_store ( struct gridfs_ * gfs , mxArray * data , char * remoteName , char * contentType ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrcstringcstringThunk';fcns.name{fcnNum}='mongo_gridfs_store'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfs_Ptr', 'MATLAB array', 'cstring', 'cstring'};fcnNum=fcnNum+1;
% void mongo_gridfile_writer_create ( struct gridfs_ * gfs , char * remoteName , char * contentType , struct gridfile_ ** gf ); 
fcns.thunkname{fcnNum}='voidvoidPtrcstringcstringvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_writer_create'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'gridfs_Ptr', 'cstring', 'cstring', 'gridfile_PtrPtr'};fcnNum=fcnNum+1;
% void mongo_gridfile_writer_write ( struct gridfile_ * gf , mxArray * data ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_writer_write'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'gridfile_Ptr', 'MATLAB array'};fcnNum=fcnNum+1;
% int mongo_gridfile_writer_finish ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_writer_finish'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% int mongo_gridfs_find ( struct gridfs_ * gfs , struct bson_ * query , struct gridfile_ ** gf ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfs_find'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfs_Ptr', 'bson_Ptr', 'gridfile_PtrPtr'};fcnNum=fcnNum+1;
% void mongo_gridfile_destroy ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_destroy'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_gridfile_get_filename ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_filename'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% double mongo_gridfile_get_length ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='doublevoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_length'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% int mongo_gridfile_get_chunk_size ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_chunk_size'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% int mongo_gridfile_get_chunk_count ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='int32voidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_chunk_count'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_gridfile_get_content_type ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_content_type'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% double mongo_gridfile_get_upload_date ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='doublevoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_upload_date'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% const char * mongo_gridfile_get_md5 ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='cstringvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_md5'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='cstring'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% void mongo_gridfile_get_descriptor ( struct gridfile_ * gf , struct bson_ ** out ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_descriptor'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'gridfile_Ptr', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_gridfile_get_metadata ( struct gridfile_ * gf , struct bson_ ** out ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_metadata'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfile_Ptr', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_gridfile_get_chunk ( struct gridfile_ * gf , int i , struct bson_ ** out ); 
fcns.thunkname{fcnNum}='int32voidPtrint32voidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_chunk'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfile_Ptr', 'int32', 'bson_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_gridfile_get_chunks ( struct gridfile_ * gf , int start , int count , struct mongo_cursor_ ** out ); 
fcns.thunkname{fcnNum}='int32voidPtrint32int32voidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_chunks'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfile_Ptr', 'int32', 'int32', 'mongo_cursor_PtrPtr'};fcnNum=fcnNum+1;
% int mongo_gridfile_read ( struct gridfile_ * gf , mxArray * data ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_read'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'gridfile_Ptr', 'MATLAB array'};fcnNum=fcnNum+1;
% double mongo_gridfile_get_pos ( struct gridfile_ * gf ); 
fcns.thunkname{fcnNum}='doublevoidPtrThunk';fcns.name{fcnNum}='mongo_gridfile_get_pos'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'gridfile_Ptr'};fcnNum=fcnNum+1;
% double mongo_gridfile_seek ( struct gridfile_ * gf , double offset ); 
fcns.thunkname{fcnNum}='doublevoidPtrdoubleThunk';fcns.name{fcnNum}='mongo_gridfile_seek'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='double'; fcns.RHS{fcnNum}={'gridfile_Ptr', 'double'};fcnNum=fcnNum+1;
structs.bson_buffer.members=struct('dummy', 'int32');
structs.bson_.members=struct('dummy', 'int32');
structs.bson_iterator_.members=struct('dummy', 'int32');
structs.mongo_.members=struct('dummy', 'int32');
structs.mongo_cursor_.members=struct('dummy', 'int32');
structs.gridfs_.members=struct('dummy', 'int32');
structs.gridfile_.members=struct('dummy', 'int32');
methodinfo=fcns;