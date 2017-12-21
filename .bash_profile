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

safe_load $DOTPATH/shrc/00_export.sh
safe_load $DOTPATH/shrc/01_alias.sh
safe_load $DOTPATH/shrc/02_util.sh
safe_load $DOTPATH/shrc/03_secret.sh
