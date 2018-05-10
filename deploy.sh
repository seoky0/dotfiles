#!/bin/sh

if [ "$(uname)" ==  "Darwin" ]; then
  echo "Deploy for Mac"
elif [ "$(uname)" == "Linux" ]; then
  echo "Deploy for Linux"
fi
