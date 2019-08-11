augroup UserColorGroup
  autocmd!
  hi clear CursorLine
  "autocmd ColorScheme * highlight Normal ctermbg=none
  autocmd ColorScheme * highlight LineNr ctermbg=none
  autocmd colorscheme * highlight CursorLineNr term=bold cterm=NONE ctermfg=yellow
  autocmd ColorScheme * highlight PmenuSel ctermbg=yellow ctermfg=white
  autocmd colorscheme * highlight VertSplit ctermbg=none ctermfg=green

  autocmd colorscheme * highlight SignColumn ctermbg=none
  autocmd colorscheme * highlight GitGutterAdd ctermbg=none ctermfg=green
  autocmd colorscheme * highlight GitGutterChange ctermbg=none ctermfg=yellow
  autocmd colorscheme * highlight GitGutterDelete ctermbg=none ctermfg=red
  autocmd colorscheme * highlight GitGutterChangeDelete ctermbg=none ctermfg=blue

  autocmd colorscheme * highlight ALEErrorSign ctermbg=none ctermfg=red
  autocmd colorscheme * highlight ALEWarningSign ctermbg=none ctermfg=yellow
  autocmd colorscheme * highlight ALEErrorLine ctermbg=none ctermfg=yellow
augroup END

colorscheme gruvbox
let g:lightline = {}
let g:gruvbox_contrast_dark = 'soft'
set background=dark

" remove/hide CursorLine
" https://thinca.hatenablog.com/entry/20090530/1243615055
augroup vimrc-auto-cursorline
  autocmd!
  autocmd CursorMoved,CursorMovedI * call s:auto_cursorline('CursorMoved')
  autocmd CursorHold,CursorHoldI * call s:auto_cursorline('CursorHold')
  autocmd WinEnter * call s:auto_cursorline('WinEnter')
  autocmd WinLeave * call s:auto_cursorline('WinLeave')

  let s:cursorline_lock = 0
  function! s:auto_cursorline(event)
    if a:event ==# 'WinEnter'
      setlocal cursorline
      let s:cursorline_lock = 2
    elseif a:event ==# 'WinLeave'
      setlocal nocursorline
    elseif a:event ==# 'CursorMoved'
      if s:cursorline_lock
        if 1 < s:cursorline_lock
          let s:cursorline_lock = 1
        else
          setlocal nocursorline
          let s:cursorline_lock = 0
        endif
      endif
    elseif a:event ==# 'CursorHold'
      setlocal cursorline
      let s:cursorline_lock = 1
    endif
  endfunction
augroup END
