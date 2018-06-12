if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

let s:dein_cache_path = expand('~/.cache/nvim/dein')
set runtimepath+=/Users/Kyohei/.cache/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = s:dein_cache_path
                 \ .'/repos/github.com/Shougo/dein.vim'

if &runtimepath !~ '/dein.vim'
  if !isdirectory(s:dein_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
  endif
  execute 'set runtimepath+=' . fnamemodify(s:dein_dir, ':p')
endif

if dein#load_state('/Users/Kyohei/.cache/dein')
  call dein#begin('/Users/Kyohei/.cache/dein')

  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy' : 0})
  call dein#load_toml('~/.config/nvim/deinlazy.toml', {'lazy' : 1})

  call dein#add('/Users/Kyohei/.cache/dein/repos/github.com/Shougo/dein.vim')

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
