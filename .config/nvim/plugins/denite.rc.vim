nmap <silent> <C-f><C-t> :<C-u>Denite filetype<CR>
nmap <silent> <C-p> :<C-u>Denite file_rec<CR>
nmap <silent> <C-y> :<C-u>Denite neoyank<CR>
call denite#custom#var('file_rec', 'command',
	\ ['rg', '--files', '--glob', '!.git'])
call denite#custom#source('file_rec', 'matchers', ['matcher_fuzzy','matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  \ [ '.git/', '.ropeproject/', '__pycache__/',
  \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
