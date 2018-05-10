#!/bin/sh

if [ "$(uname)" ==  "Darwin" ]; then
  echo "Set up Mac"
  # todo
  # brew, git, anyenv, rbenv, ndenv, pyenv, fish, tmuxのインストール
  # rbenvでrubyをインストール
  # ndenvでnodeをインストール
  # yarnをインストール
  if type "brew" > /dev/null 2>&1; then
    echo "Homerew is installed"
  else
    echo "Homebrew is installing"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
elif [ "$(uname)" == "Linux" ]; then
  echo "Set up Linux"
fi
