" auto completion ----------
inoremap jj <Esc>
inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
map <C-n> :NERDTreeToggle<CR>
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap ; :Buffers
nmap <C-_> :Commentary<CR>
map <C-h> :Unite file_mru<CR>
map <C-t> :TagbarToggle<CR>
nnoremap <silent> <C-o> :<C-u>Unite -auto-preview outline<CR>

imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>
