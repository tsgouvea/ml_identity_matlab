% disp('running gen_spec')
function gen_spec
% % GEN_SPEC: Generates spec file
% %
% % See documentation about processors in https://github.com/flatironinstitute/mountainlab-js/
%
curpath=fileparts(mfilename('fullpath'));
addpath([curpath,'/jsonlab']);

processors = {};

exe_command=['echo "' fullfile(curpath,'run_mfile.sh') ' cd(''processors''), do_nothing"'] ;
processors{end+1} = struct('name','kepecs.donothing','version','0.0','description','Does nothing',...
'inputs',{{}},...
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', false)},'exe_command',exe_command);

exe_command=[fullfile(curpath,'run_mfile.sh') ' "cd(''processors''), duplifile(''$file_in$''' ')"'];
processors{end+1} = struct('name','kepecs.duplifile','version','0.0','description','Duplicates input file',...
'inputs',{{struct('name','file_in','optional',0)}},... % double curly brackets required
'outputs',{{}},...
'parameters',{{}},'opts',{struct('force_run', true)},'exe_command',exe_command);

spec = struct('processors',{processors});

disp(savejson('',spec))
