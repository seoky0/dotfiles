let g:ale_linters = {
    \   'ruby': ['rubocop'],
    \   'javascript': ['eslint'],
    \ }
let g:ale_fixers = {}
let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \ 'ruby': ['rubocop']
      \}

let g:ale_javascript_prettier_use_local_config = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" エラー箇所の移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ALEFixのキーバインド:
noremap <Space>a :<C-u>ALEFix<CR>
