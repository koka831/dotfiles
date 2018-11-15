# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
source "$HOME/.bash_profile"
source "$HOME/dotfiles/dein/repos/github.com/morhetz/gruvbox/gruvbox_256palette.sh"
typeset -A ZSH_HIGHLIGHT_STYLES

# zsh plugin manager
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh
source $HOME/dotfiles/conf/plugins.zsh

zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' verbose yes
autoload colors
colors

fpath=($HOME/.zsh/completions $fpath)
fpath+=~/.zfunc
autoload -U compinit && compinit

export TERM='screen-256color'
# for git repo status
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{green}[%b]%f%c%u'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{blue}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:git:*' actionformats '[%b]%c%u<!%a>'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)
ZSH_HIGHLIGHT_STYLES[arg0]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[path]='fg=red'
ZSH_HIGHLIGHT_STYLES[globbing]='none'

setopt auto_cd
setopt auto_param_slash
setopt list_types
setopt interactive_comments
setopt no_flow_control
setopt share_history
setopt hist_ignore_all_dups
setopt inc_append_history
setopt auto_pushd
setopt hist_expand

alias cdb='cd-bookmark'

bindkey '\C-p' history-beginning-search-backward
bindkey '\C-a' beginning-of-line
bindkey '\C-e' end-of-line
bindkey '\C-h' backward-char
bindkey '\C-l' forward-char
bindkey '\C-f' forward-word
bindkey '\C-b' backward-word


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

