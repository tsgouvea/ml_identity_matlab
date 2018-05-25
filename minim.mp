#!/bin/bash

if [ "$1" == 'spec' ]; then
  bash $(dirname $0)/run_mfile.sh gen_spec
  if [ $? -eq 0 ]; then
    exit 0
  else
    printf "Failed to generate spec file.\n\tError at $0\n\n"
    exit 1
  fi
else
  # echo blah
  $(dirname $0)/run_mfile.sh "foobar('thiago','gouvea')"
fi
