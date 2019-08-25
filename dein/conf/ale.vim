augroup AleLoadGroup
  autocmd!
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
  let g:ale_python_flake8_options="--ignore=E501"
  let g:ale_set_highlights = 0
  let g:ale_ale_echo_msg_format = '[%severity%] %s'
  let g:ale_rust_rls_toolchain = 'stable'

  nmap <silent> <C-j> <Plug>(ale_next_wrap)

  let g:ale_linter_aliases = {
        \  'vue'        : ['vue', 'javascript', 'css'],
        \  'jsx'        : ['css', 'javascript'],
        \ }

  let g:ale_linters = {
        \  'asm'        : ['nasm'],
        \  'python'     : ['pyls'],
        \  'rust'       : ['cargo', 'rls'],
        \  'haskell'    : ['stack-build', 'hie'],
        \  'javascript' : ['javascript-language-server', 'eslint'],
        \  'typescript' : ['tsserver', 'tslint', 'eslint'],
        \  'jsx'        : ['eslint'],
        \  'tsx'        : ['tslint', 'eslint'],
        \  'vue'        : ['eslint', 'vls']
        \ }

  let g:ale_fixers = {
        \ '*': ['remove_trailing_lines', 'trim_whitespace'],
        \ 'rust': ['rustfmt'],
        \ 'javascript': ['eslint'],
        \ 'vue': ['eslint', 'prettier']
        \ }
augroup END
