" 移動関連
set virtualedit=onemore                         " 行末の1文字先までカーソルを移動する
set whichwrap=b,s,h,l,<,>,[,],~                 " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set history=5000                                " 保存するコマンド履歴の数
set clipboard=unnamed                           " yunkとクリップボードを同じにする
set expandtab                                   " タブ入力を複数の空白入力に置き換える
set tabstop=2                                   " 画面上でタブ文字が占める幅
set showtabline=2                               " タブが１つのとき以外タブバーを表示
set softtabstop=2                               " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent                                  " 改行時に前の行のインデントを継続する
set smartindent                                 " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=2                                " smartindentで増減する幅
set showmatch                                   " 括弧の対応関係を一瞬表示する
" 複数行のペーストのときにずれないようにする
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"
  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" shellをbashに設定
if $SHELL =~ '/fish$'
  set shell=bash
endif
