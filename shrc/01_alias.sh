###################
# command aliases #
###################
alias dc='docker-compose'
alias g='git'
# alias ga='git add --all'
alias gc='git commit -v'
alias gco='git branch -a | fzf | xargs git checkout'
alias gs='git status -s'
alias grm='git rm --cached `git ls-files --full-name -i --exclude-from=.gitignore`'
alias git_remove_merged="git branch --merged | grep -vE '^\*|master$|develop$' | xargs -I % git branch -d %"
alias l='ls -lha --color=auto'
# alias ls='ls -lha --color=auto'
alias la='ls -lha --color=auto'
alias md='mdless'
# alias ssh=~/dotfiles/etc/scripts/ssh-change-prompt.sh
alias subl='reattach-to-user-namespace subl'
alias tree='tree -C'
alias t='tig'
alias ta='tig --all'
alias tmux='tmux -u'
# alias v='vagrant'
alias vi='vim'
alias rng='ranger'
alias tw='twterm'
alias sshc='ssh-change-color'
alias c='cargo'
alias https='http --default-scheme=https'
alias ansta='/usr/local/android-studio/bin/studio.sh'
