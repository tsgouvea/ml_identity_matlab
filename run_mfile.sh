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
$cmd "cd(""'"$(dirname $0)"'), $1"
exit 0
