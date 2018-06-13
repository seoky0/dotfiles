nnoremap <silent> <Space>t :<C-u>Denite filetype<CR>
nnoremap <silent> <C-p> :<C-u>Denite file_rec<CR>
call denite#custom#source('file_rec', 'matchers', ['matcher_fuzzy','matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [
      \ '.git/',
      \ 'build/',
      \ '__pycache__/',
      \ 'images/',
      \ '*.o',
      \ '*.make',
      \ '*.min.*',
      \ 'img/',
      \ 'fonts/',
      \ 'bin/'
      \ 'node_modules/',
      \ 'tmp/'])
