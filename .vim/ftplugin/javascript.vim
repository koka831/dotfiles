set shiftwidth=2

" additional highlighting
syn keyword javaScriptAdditionalKeyword require
highlight link javaScriptAdditionalKeyword GruvboxPurple

if executable('javascript-typescript-stdio')
    call lsp#register_server({
    \ 'name': 'jtls',
    \ 'cmd': {server_info->['javascript-typescript-stdio']},
    \ 'whitelist': ['javascript', 'typescript']
    \ })
endif
