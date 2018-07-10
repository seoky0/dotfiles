augroup filetype
  autocmd!
  autocmd StdinReadPre * let s:std_in=1 
  autocmd BufNewFile,BufRead *.ts       set filetype=typescript
  autocmd BufNewFile,BufRead *.tsx      set filetype=typescript
  autocmd BufNewFile,BufRead *.jsx      set filetype=javascript.jsx
  autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
augroup END

