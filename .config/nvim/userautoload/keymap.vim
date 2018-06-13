" ;を:として扱う
nnoremap ; :
" leaderキーをスペースキーにマッピング
let mapleader = "\<Space>"
nnoremap <Leader>v :<C-u>setlocal cursorcolumn!<CR>
" 空行を作成する
nnoremap 0 O<Esc>^D
" 空行を作成して改行する
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j
" 移動
" nnoremap <C-j> <C-d>
" nnoremap <C-k> <C-u>
" :qをsqに割当て
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
" escキーをC-jに割当
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
" タブ
nnoremap tt :<C-u>tabnew<CR>                            " 新しいタブを作成
nnoremap tn gt                                          " 次のタブに移動 tab next
nnoremap tp gT                                          " 前のタブに移動 tab previous
nnoremap tx :<C-u>tabclose<Cr>                          " タブを閉じる
" vimgrepの検索結果の移動
nnoremap [q :cprevious<CR>                              " 前へ
nnoremap ]q :cnext<CR>                                  " 次へ
nnoremap [Q :<C-u>cfirst<CR>                            " 最初へ
nnoremap ]Q :<C-u>clast<CR>                             " 最後へ
" 画面分割
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
