#!/bin/sh

if [ "$(uname)" ==  "Darwin" ]; then
    echo "Set up Mac"
elif [ "$(uname)" == "Linux" ]; then
    echo "Set up Linux"
fi