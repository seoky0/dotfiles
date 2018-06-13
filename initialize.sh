#!/bin/sh

if [ "$(uname)" ==  "Darwin" ]; then
    echo "Set up for Mac"
    if type "brew" > /dev/null 2>&1; then
        echo "Homerew is installed"
    else
        echo "Homebrew is installing"
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    echo "Install applications"
    brew cask install google-japanese-ime
    brew cask install slack
    brew cask install docker
    brew cask install clipy

    echo "Install packages"
    brew install git
    brew install yarn --without-node:
    brew install ripgrep
    brew install fzf
    brew install peco
    brew install z
    brew install tmux

    echo "Install theme"
    git clone https://github.com/Arc0re/Iceberg-iTerm2.git

    echo "Set up font"
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts

    echo "Set up shell"
    brew install fish
    curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
    fisher omf/theme-agnoster

    echo "Set up anyenv and envs"
    git clone https://github.com/riywo/anyenv ~/.anyenv
    echo 'set --export PATH  "$HOME/.anyenv/bin" $PATH' >> ~/.config/fish/config.fish
    exec fish -l
    mkdir $HOME/.anyenv/envs
    anyenv install pyenv
    anyenv install ndenv
    anyenv install rbenv
    anyenv install goenv
    exec fish -l

    echo "Install programming languages"
    pyenv install 3.6.5
    pyenv install 2.7.15
    pyenv global 2.7.15
    pyenv rehash
    rbenv install 2.5.1
    rbenv global 2.5.1
    rbenv rehash
    ndenv install v10.3.0
    ndenv global v10.3.0
    ndenv rehash
    goenv install 1.10.2
    goenv global 1.10.2
    goenv rehash
    exec fish -l

    echo "Install typescript"
    yarn global add typescript

    echo "Set up neovim"
    brew install neovim
    gem install neovim
    pip2 install neovim
    pyenv global 3.6.5
    pyenv rehash
    pip3 install neovim

    echo "Install neovim plugins"
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.cache/dein

elif [ "$(uname)" == "Linux" ]; then
    echo "Set up for Linux"
fi
