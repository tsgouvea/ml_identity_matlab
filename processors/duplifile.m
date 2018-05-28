function [ varargout ] = duplifile( FILE )
% DUPLIFILE: Duplicates file
%
% Duplicates file FNAME passed to ml-*-process under --inputs file_in:FNAME

[PATHSTR,NAME,EXT] = fileparts(FILE);
eval(['copyfile(''' FILE ''',''' fullfile(PATHSTR,NAME) '_copy' EXT ''');'])

end  % function
