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

exe_command=['echo "' fullfile(curpath,'run_mfile.sh') ' cd(''processors''), donothing"'] ;
spec1 = struct('name','kepecs.donothing','version','0.0','description','Minimal template of mountainlab-js processor in Matlab or Octave',...
'inputs',{{}},...
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', false)},'exe_command',exe_command);

exe_command=[fullfile(curpath,'run_mfile.sh') ' "cd(''processors''), donada"'] ;
spec2 = struct('name','kepecs.donada','version','0.0','description','Minimal template of mountainlab-js processor in Matlab or Octave',...
'inputs',{{}},...
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', true)},'exe_command',exe_command);

exe_command=[fullfile(curpath,'run_mfile.sh') ' "cd(''processors''), donihil"'] ;
spec3 = struct('name','kepecs.donihil','version','0.0','description','Minimal template of mountainlab-js processor in Matlab or Octave',...
'inputs',{{}},...
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', true)},'exe_command',exe_command);

spec = struct('processors',{{spec1,spec2,spec3}});

% fprintf(1,savejson('',spec))
disp(savejson('',spec))
