set shiftwidth=2

if executable('vls')
  call lsp#register_server({
  \ 'name': 'vls',
  \ 'cmd': {server_info->['vls']},
  \ 'whitelist': ['vue']
  \ })
endif
