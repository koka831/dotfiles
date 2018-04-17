
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="~/dotfiles/etc/scripts:$PATH"
export PATH="$DOTPATH/bin:$PATH"
# for gnu replace
export PATH="/opt/gradle/gradle-3.4.1/bin:$PATH"
#neovim
export XDG_CONFIG_HOME="$HOME/.config"
export LD_LIBRARY_PATH=$(rustc --print sysroot)/lib:$LD_LIBRARY_PATH
#nodeblew
# export PATH=$HOME/.nodebrew/current/bin:$PATH
# for kubernetes
export MINIKUBE_HOME=$HOME
export KUBECONFIG=$HOME/.kube/config
# anyenv
#export PATH="$HOME/.anyenv/bin:$PATH"
# export PATH="$HOME/.exenv/bin:$PATH"
# eval "$(anyenv init -)"
# eval "$(exenv init -)"
# sqlite
export PATH="$HOME/.scalaenv/bin:$PATH"
eval "$(scalaenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
# codeprep
export CODEPREP_BACKEND_PATH=$HOME/Documents/src/givery/codeprep/codeprep-backend
# curl
export PATH="/usr/local/opt/curl/bin:$PATH"
# gopath
#export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/src/github/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
#export PATH="~/Documents/src/go/bin"
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

## export mycommand
export PATH="$HOME/src/givery/codeprep/codeprep_contents_generator:$PATH"
export CODEPREP_TEMPLATE_PATH="$HOME/src/givery/codeprep/codeprep_contents_generator"
## e

