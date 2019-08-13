augroup LspLoadGroup
  autocmd!

  if executable('pyls')
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'pyls',
          \ 'cmd': { server_info->['pyls'] },
          \ 'whitelist': ['python'],
          \ 'workspace_config': { 'pyls': { 'plugins': {
          \   'pycodestyle': { 'enabled': v:false },
          \   'jedi_definition': { 
          \     'follow_imports': v:true,
          \     'follow_builtin_imports': v:true,
          \   }
          \ }}}
          \ })
  endif

  if executable('rls')
    autocmd User lsp_setup call lsp#register_server({
          \ 'name': 'rls',
          \ 'cmd': { server_info->['rustup', 'run', 'stable', 'rls'] },
          \ 'whitelist': ['rust']
          \ })
  endif

  if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'typescript-language-server',
          \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
          \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json')) },
          \ 'whitelist': ['javascript', 'typescript', 'javascript.jsx']
          \ })
  endif

  if executable('vls')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'vls',
          \ 'cmd': { server_info->['vls'] },
          \ 'whitelist': ['vue']
          \ })
  endif

  if executable('hie-wrapper')
    au User lsp_setup call lsp#register_server({
          \ 'name': 'hie',
          \ 'cmd': { server_info->[&shell, &shellcmdflag, 'hie-wrapper --lsp'] },
          \ 'whitelist': ['haskell']
          \ })
  endif

  let g:lsp_diagnostics_enabled = 0 " use ALE to display error/warning message
  nnoremap <buffer> <C-]> :<C-u>LspDefinition<CR>
  nnoremap <buffer> gd :sp<CR>:<C-u>LspDefinition<CR>
  nnoremap <buffer> gk :<C-u>LspHover<CR>
  set omnifunc=lsp#complete
augroup END
