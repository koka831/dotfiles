# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
source "$HOME/.bash_profile"
source "$HOME/dotfiles/dein/repos/github.com/morhetz/gruvbox/gruvbox_256palette.sh"
source "$HOME/dotfiles/etc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

typeset -A ZSH_HIGHLIGHT_STYLES

autoload -Uz compinit
compinit
zstyle ':completion:*:default' menu select=2
autoload colors
colors

# zsh plugin manager
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh
source $HOME/dotfiles/conf/plugins.zsh

# for zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
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

setopt AUTO_CD
setopt auto_param_slash
setopt list_types
setopt interactive_comments
setopt no_flow_control
setopt share_history

alias cdb='cd-bookmark'

bindkey '^P' history-beginning-search-backward
bindkey '\C-a' beginning-of-line
bindkey '\C-e' end-of-line
bindkey '\C-h' backward-char
bindkey '\C-l' forward-char
bindkey '\C-f' forward-word
bindkey '\C-b' backward-word

safe_load $HOME/.fzf.zsh
