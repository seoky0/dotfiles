let g:ale_linters = {
    \   'ruby': ['rubocop'],
    \   'javascript': ['eslint'],
    \   'typescript': ['tslint'],
    \   'python': ['autopep8'],
    \   'c': ['clang-format'],
    \   'cpp': ['clang-format'],
    \   'vue': ['prettier', 'eslint'],
    \   'go': ['gofmt'],
    \ }
let g:ale_fixers = {}
let g:ale_fixers = {
    \   'ruby': ['rubocop'],
    \   'javascript': ['eslint'],
    \   'typescript': ['tslint'],
    \   'python': ['autopep8'],
    \   'c': ['clang-format'],
    \   'cpp': ['clang-format'],
    \   'vue': ['prettier', 'eslint'],
    \   'go': ['gofmt'],
    \}

let g:ale_javascript_prettier_use_local_config = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 0
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_lint_on_text_changed = 'normal'

" エラー箇所の移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ALEFixのキーバインド:
noremap <Space>a :<C-u>ALEFix<CR>

" Linterの結果を開く
function! s:ale_list()
    let g:ale_open_list = 1
    call ale#Queue(0, 'lint_file')
endfunction
command! ALEList call s:ale_list()
nnoremap <Space>al  :<C-u>ALEList<CR>
" qを押せばリストを閉じる
autocmd MyAutoCmd FileType qf nnoremap <silent><buffer>q :let g:ale_open_list = 0<CR>:q!<CR>
autocmd MyAutoCmd FileType help,qf,man,ref let b:ale_enabled = 0
