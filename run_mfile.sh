#!/bin/bash

if ( command -v matlab &> /dev/null )
then
  cmd='matlab -nosplash -nojvm -r'
else
  if ( command -v octave &> /dev/null )
  then
    cmd='octave --no-gui --eval'
  else
    printf "\nCould not find Matlab nor Octave.\n\tMake sure at least one is installed and callable.\n\tError at $0\n\tCalled with arguments: $@\n\n"
    exit 1
  fi
fi
# echo $cmd '"addpath('"'"$(dirname $0)"/'"');' $1'"'
$cmd "cd(""'"$(dirname $0)"'), $1"

# echo $cmd '"try, addpath('$(dirname $0)'); ' $1 "; exit(0);, catch err, disp(getReport(err,'extended')); exit(-1);, end;"
# echo $cmd $@
# (matlab -nosplash -nojvm -r $@ 2> /dev/null) || ( octave --no-gui --eval $@ 2> /dev/null || printf "\nCould not find Matlab nor Octave. Make sure at least one is installed and callable.\n\nError at $0 called with arguments $@:\n\n")

exit 0
