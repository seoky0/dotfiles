nmap <silent><C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let g:NERDTreeWinSize=30
au MyAutoCmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif  " ファイルが選択されたときはNERDTreeを表示しない
au MyAutoCmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " 最後のウィンドウがNERDTreeの場合にvimを閉じる
