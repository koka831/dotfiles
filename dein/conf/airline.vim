if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme = 'gruvbox'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_symbols.branch = 'ᚠ'
let g:airline#extensions#default#layout = [
    \ ['a', 'b', 'c'],
    \ ['x', 'y', 'z', 'error', 'warning']
\ ]

call airline#parts#define_accent('virtualenv', 'yellow')
let g:airline_section_x = airline#section#create(['%{&filetype}'])
let g:airline_section_y = airline#section#create(['ffenc'])
let g:airline_section_z = airline#section#create(
    \ ['㏑: %l', ' c: %c']
\ )

function! AirlineThemePatch(palette)
  let a:palette.accents.running = ['#98971a', '', 'green', '', '']
  let a:palette.accents.success = ['#98971a', '', 'green', '', '']
  let a:palette.accents.failure = ['#9d0006', '', 'red', '', '']
  let a:palette.accents.yellow = ['#d79921', '', 'yellow', '', 'bold']
endfunction
let g:airline_theme_patch_func = 'AirlineThemePatch'
