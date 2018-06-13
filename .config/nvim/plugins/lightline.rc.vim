let g:lightline = {
  \ 'colorscheme': 'iceberg',
  \ 'active': {
  \   'left': [
  \     ['mode', 'paste'],
  \     ['fugitive', 'gitbranch', 'readonly', 'filename', 'modified'],
  \     ['ale'],
  \   ]
  \ },
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \   'gitbranch': 'fugitive#head',
  \   'ale': 'ALEGetStatusLine'
  \ }
  \ }
function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%') !=# '' ? expand('%') : '[No Name]'
endfunction
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
