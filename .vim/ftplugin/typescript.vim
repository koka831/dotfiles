set shiftwidth=2

if executable('javascript-typescript-stdio')
    call lsp#register_server({
    \ 'name': 'jtls',
    \ 'cmd': {server_info->['javascript-typescript-stdio']},
    \ 'whitelist': ['javascript', 'typescript']
    \ })
endif

let g:tagbar_type_typescript = {
            \ 'ctagsbin' : 'tstags',
            \ 'ctagsargs' : '-f-',
            \ 'kinds': [
            \ 'e:enums:0:1',
            \ 'f:function:0:1',
            \ 't:typealias:0:1',
            \ 'M:Module:0:1',
            \ 'I:import:0:1',
            \ 'i:interface:0:1',
            \ 'C:class:0:1',
            \ 'm:method:0:1',
            \ 'p:property:0:1',
            \ 'v:variable:0:1',
            \ 'c:const:0:1',
            \ ],
            \ 'sort' : 0
            \ }
