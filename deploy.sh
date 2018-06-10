#!/bin/sh

if [ "$(uname)" ==  "Darwin" ]; then
  echo "Deploy for Mac"
  mkdir -p ~/.config
  mkdir -p ~/.config/fish
  mkdir -p ~/.config/fish/completions
  mkdir -p ~/.config/fish/conf.d
  mkdir -p ~/.config/fish/functions
  mkdir -p ~/.config/karabiner
  mkdir -p ~/.config/nvim
  ln -sf ~/dotfiles/.config/fish/completions/fisher.fish ~/.config/fish/completions/fisher.fish
  ln -sf ~/dotfiles/.config/fish/functions/fish_mode_prompt.fish ~/.config/fish/functions/fish_mode_prompt.fish
  ln -sf ~/dotfiles/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
  ln -sf ~/dotfiles/fish/functions/fish_right_prompt.fish ~/.config/fish/functions/fish_right_prompt.fish
  ln -sf ~/dotfiles/fish/functions/fisher.fish ~/.config/fish/functions/fisher.fish
  ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
  ln -sf ~/dotfiles/fish/fishfile ~/.config/fish/fishfile
  ln -sf ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
  ln -sf ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
  echo "Finish deploy"
elif [ "$(uname)" == "Linux" ]; then
  echo "Deploy for Linux"
fi
