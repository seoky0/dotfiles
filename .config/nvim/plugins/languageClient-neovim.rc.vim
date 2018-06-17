let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'ruby': ['tcp://127.0.0.1:7658'],
    \ 'python': ['pyls'],
    \ 'html': [],
    \ 'css': [],
    \ 'vue': ['vls'],
    \ }
let g:LanguageClient_autoStart = 1

setlocal iskeyword+=$
setlocal iskeyword+=-

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
