% disp('running gen_spec')
function gen_spec
% % function: Short description
% %
% % Extended description
%
curpath=fileparts(mfilename('fullpath'));
addpath([curpath,'/jsonlab']);
% exe_command = [curpath '/run_matlab.sh ' curpath '/waveform_features \"waveform_features_f(''$timeseries_filt$'',''$firings$'',''$out_path$'',$clip_size$);\"'];
% exe_command=$(dirname $0)/run_mfile.sh 'cd(processors), donothing';
% exe_command=[fullfile(curpath,'run_mfile.sh') ' printf(do nothing)'] ;

processors = {};

exe_command=['echo "' fullfile(curpath,'run_mfile.sh') ' cd(''processors''), donothing"'] ;
processors{end+1} = struct('name','kepecs.donothing','version','0.0','description','Minimal template of mountainlab-js processor in Matlab or Octave',...
'inputs',{{}},...
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', false)},'exe_command',exe_command);

exe_command=[fullfile(curpath,'run_mfile.sh') ' "cd(''processors''), donada"'] ;
processors{end+1} = struct('name','kepecs.donada','version','0.0','description','Minimal template of mountainlab-js processor in Matlab or Octave',...
'inputs',{{}},...
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', true)},'exe_command',exe_command);

exe_command=[fullfile(curpath,'run_mfile.sh') ' "cd(''processors''), duplifile($file_in$' ')"'];
processors{end+1} = struct('name','kepecs.duplifile','version','0.0','description','Duplicates input file',...
'inputs',{struct('name','file_in','optional',0)},...
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', true)},'exe_command',exe_command);


% exe_command=[fullfile(curpath,'run_mfile.sh') ' "cd(''processors''), donihil"'] ;
% processors{end+1} = struct('name','kepecs.copyfile','version','0.0','description','Copies input to output',...
% 'inputs',{struct('name','file_in','optional',0)},...
% 'outputs',{struct('name','file_out','optional',0)},...
% 'parameters',{{}},'opts',{struct('force_run', true)},'exe_command',exe_command);

spec = struct('processors',{processors});

% fprintf(1,savejson('',spec))
disp(savejson('',spec))
