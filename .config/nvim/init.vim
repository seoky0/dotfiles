if &compatible
  set nocompatible
endif

set runtimepath+=/Users/Kyohei/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/Kyohei/.cache/dein')
  call dein#begin('/Users/Kyohei/.cache/dein')
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
