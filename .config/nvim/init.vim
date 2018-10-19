if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

" dein.vim
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" pythonのバージョン指定
let g:python_host_prog=$PYENV_ROOT.'/versions/2.7.15/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/3.6.5/bin/python'

" 設定を読み込む
runtime! userautoload/filetype.vim
runtime! userautoload/init.vim
runtime! userautoload/keymap.vim
runtime! userautoload/options.vim
runtime! userautoload/search.vim
runtime! userautoload/window.vim
runtime! userautoload/vim-submode.vim
