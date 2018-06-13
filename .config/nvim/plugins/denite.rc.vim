nmap <silent> [denite]<C-t> :<C-u>Denite filetype<CR>
nmap <silent> [denite]<C-p> :<C-u>Denite file_rec<CR>
nmap <silent> [denite]<C-y> :<C-u>Denite neoyank<CR>
nmap <silent> [denite]<C-j> :<C-u>Denite line<CR>
nmap <silent> [denite]<C-g> :<C-u>Denite grep<CR>
nmap <silent> [denite]<C-]> :<C-u>DeniteCursorWord grep<CR>
nmap <silent> [denite]<C-u> :<C-u>Denite file_mru<CR>
nmap <silent> [denite]<C-r> :<C-u>Denite -resume<CR>
nmap <silent> [denite]; :<C-u>Denite -resume -immediately -select=+1<CR>
nmap <silent> [denite]- :<C-u>Denite -resume -immediately -select=-1<CR>
nmap <silent> [denite]<C-d> :<C-u>call denite#start([{'name': 'file_rec', 'args': ['~/.config/dein']}])<CR>
