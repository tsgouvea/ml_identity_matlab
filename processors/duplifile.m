function [ varargout ] = duplifile( varargin )
% function: Short description
%
% Extended description
disp('Fake-duplicating file')

FILE = varargin{1};

disp(FILE)

[PATHSTR,NAME,EXT] = fileparts(FILE);

disp([PATHSTR,NAME,EXT])

disp(['copyfile(' FILE ',' fullfile(PATHSTR,NAME) '_copy' EXT ')'])


end  % function
