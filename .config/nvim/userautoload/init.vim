set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8                          " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932   " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac                    " 改行コードの自動判別. 左側が優先される
set ambiwidth=double                            " □や○文字が崩れる問題を解決
set noswapfile                                  " スワップファイルを作成しない
set nrformats=                                  " 数を10進数として扱う
set hidden                                      " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set backspace=indent,eol,start                  " バックスペースの制御コントロールをよしなにする
set number                                      " 行数を表示
set cursorline                                  " 現在行をハイライト
" set cursorcolumn                                " 現在列をハイライト
set laststatus=2                                " 常にステータスラインを表示
set background=dark
set noshowmode                                  " モードを常に非表示
set wildmenu                                    " コマンドモードの補完
