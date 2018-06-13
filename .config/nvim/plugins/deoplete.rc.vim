let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.javascript = '[^. *\t]\.\w*'
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.ruby =
      \ ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
		  \ 'tern#Complete',
		  \ 'jspc#omni'
		  \]
