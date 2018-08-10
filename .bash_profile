#!/usr/bin/env bash
# _         _
#| | _____ | | ____ _
#| |/ / _ \| |/ / _` |
#|   < (_) |   < (_| |
#|_|\_\___/|_|\_\__,_|
#
DOTPATH=$HOME/dotfiles
export PATH=$DOTPATH:$PATH
PROMPT='%f%F{white}%~%f%F{yellow} $%f '

function safe_load() {
  if [[ -r $1 ]]; then
    source $1
  fi
}

for conf in `find $DOTPATH/shrc/*.sh`; do
  safe_load $conf
  echo "$conf loaded\n"
done
