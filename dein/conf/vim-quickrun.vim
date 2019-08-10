let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
    \ 'runner'  : 'vimproc',
    \ 'outputter': 'error',
    \ 'outputter/error/success' : 'buffer',
    \ 'outputter/error/error' : 'quickfix',
    \ 'outputter/buffer/split' : 'rightbelow 8sp',
    \ 'outputter/buffer/close_on_empty': 1
\ }
let g:quickrun_config.cpp = {
    \   'type' : 'cpp/g++',
    \   'cmdopt' : '-Wall -pedantic'
\ }
let g:quickrun_config.python = {
    \ 'type'   : 'python',
    \ 'command': 'python',
    \ 'cmdopt' : '-u'
\ }
au FileType qf nnoremap <silent><buffer>q :quit<CR>
