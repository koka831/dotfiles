if &term =~ '256color'
    set t_ut=
endif

filetype plugin indent on
"set termguicolors
set t_Co=256
set expandtab
set shiftwidth=4
set backspace=2
set synmaxcol=200
set laststatus=2
set clipboard=unnamedplus,autoselect
set nobackup
set nopaste
set nowritebackup
set noswapfile
set showmatch matchtime=1
set showmatch
set autoindent
set number
set smarttab
set ruler
set ignorecase
set incsearch
set hlsearch
set list
" set preview window position to below/right
set splitbelow
set splitright
set history=200
set timeout timeoutlen=1000 ttimeoutlen=50
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" for msgline
set cmdheight=1
" remove ugly vertical split line
set fillchars-=vert:\| | set fillchars+=vert:\ 
set rtp+=/usr/local/opt/fzf

" for :vimgrep
set grepprg=grep\ -rnI\ --exclude-dir=.git\ --exclude-dir=node_modules\ --exclude-rir=vendor

" override GGrep with fzf
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

autocmd BufNewFile $HOME/src/github/weekly/*.md 0r $HOME/.vim/template/weekly.template

" cd with ghq list and fzf
" run: Fc<CR>
command! -nargs=0 Fc call fzf#run({
\ 'source': 'ghq list --full-path',
\ 'sink': 'cd'
\ })
