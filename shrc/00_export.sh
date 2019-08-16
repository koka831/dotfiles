export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/dotfiles/etc/scripts:$PATH"
export PATH="$DOTPATH/bin:$PATH"
export EDITOR=vim

#neovim
export XDG_CONFIG_HOME="$HOME/.config"

#nodeblew
# export PATH=$HOME/.nodebrew/current/bin:$PATH

##########################################
# for virtual env
##########################################
# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# python
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(pipenv --completion)"
export PIPENV_VENV_IN_PROJECT=true
# golang
export GOPATH=$HOME/src/github/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
# rust
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export LD_LIBRARY_PATH=$(rustc --print sysroot)/lib:$LD_LIBRARY_PATH

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

eval "$(hub alias -s)"
##########################################
# additional commands
##########################################
# bat https://github.com/sharkdp/bat
# export BAT_CONFIG_DIR=$(bat cache --config-dir)

#git::diff-highright
export PAGER=less
export LESS='-i -M -R'
export LESS_TERMCAP_mb=$'\E[01;31m'      # Begins blinking.
export LESS_TERMCAP_md=$'\E[01;31m'      # Begins bold.
export LESS_TERMCAP_me=$'\E[0m'          # Ends mode.
export LESS_TERMCAP_se=$'\E[0m'          # Ends standout-mode.
export LESS_TERMCAP_so=$'\E[00;47;30m'   # Begins standout-mode.
export LESS_TERMCAP_ue=$'\E[0m'          # Ends underline.
export LESS_TERMCAP_us=$'\E[01;32m'      # Begins underline.

export MDV_CODE_THEME=all

# fzf
export FZF_DEFAULT_OPTS='
  --reverse
  --color=spinner:#d79921,hl:#d79921,hl+:#9d0006,fg+:#d5c4a1
  --color=fg:#ebdbb2,header:#98971a,info:#458588,pointer:#d79921
  --color=marker:#98971a,prompt:#a89984
'
