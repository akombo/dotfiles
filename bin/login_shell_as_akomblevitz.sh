#!/bin/bash

POTENTIAL_HOME="$HOME/akomblevitz"
if [[ ! -d "$POTENTIAL_HOME" ]]; then
    (
      echo "The '$POTENTIAL_HOME' directory does not exist."
      echo 'Will use default HOME variable value.'
      echo
    ) >&2
else
  export HOME="$POTENTIAL_HOME"
  cd
fi

export LANG=en_US.UTF-8

exec bash --login
