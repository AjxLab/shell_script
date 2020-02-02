#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
  echo Mac
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  echo Windows
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo Linux
else
  echo Unknown OS
fi
