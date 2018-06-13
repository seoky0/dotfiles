let g:lightline = {
  \ 'colorscheme': 'iceberg',
  \ 'active': {
  \   'left': [
  \     ['mode', 'paste'],
  \     ['readonly', 'filename', 'modified', 'ale'],
  \   ]
  \ },
  \ 'component_function': {
  \   'ale': 'ALEGetStatusLine'
  \ }
  \ }
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
