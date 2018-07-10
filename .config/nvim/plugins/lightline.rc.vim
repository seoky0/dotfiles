let g:lightline = {
  \ 'colorscheme': 'iceberg',
  \ 'active': {
  \   'left': [
  \     ['mode', 'paste'],
  \     ['fugitive', 'gitbranch', 'readonly', 'filename', 'modified'],
  \     [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]
  \   ]
  \ },
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \   'gitbranch': 'fugitive#head',
  \ }
  \ }
function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%') !=# '' ? expand('%') : '[No Name]'
endfunction

function! ALELinterResults()
  let l:count = ale#statusline#Count(bufnr(''))
  let l:errors = l:count.error + l:count.style_error
  let l:warnings = l:count.warning + l:count.style_warning
  return l:count.total == 0 ? '⬥ OK' : '⨉' . l:errors . '⚠ ' . l:warnings
endfunction

" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
