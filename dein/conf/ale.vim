let g:ale_set_signs = 1
let g:ale_sign_error = '×'
let g:ale_sign_warning = '×'
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1
" let g:ale_python_flake8_executable = 'python3'

let g:ale_linter_aliases = {'vue': ['vue', 'javascript', 'css']}
highlight AleErrorLine ctermfg=yellow
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_linters = {
\  'asm'        : ['nasm'],
\  'javascript' : ['eslint'],
\  'typescript' : ['tslint'],
\  'vue'      : ['eslint', 'vls']
\}
