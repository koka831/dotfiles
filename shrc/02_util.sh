function ssh-change-color() {
  fg_black
  bg_white
  ssh "$@" -t 
}

function resetc() {
  fg_white
  bg_black
}

function bg_black() {
  echo -ne '\e]11;#282828\a'
}

function fg_black() {
  echo -ne '\e]10;#3c3836\a'
}

function bg_white() {
  echo -ne '\e]11;#EBDBB2\a'
}

function fg_white() {
  echo -ne '\e]10;#EBDBB2\a'
}

function jcurl() {
    curl "$@" | python -mjson.tool 
}

function k_color() {

echo "${fg[green]}green ${fg[red]}red ${fg[black]}black ${fg[yellow]}yellow ${fg[blue]}blue ${fg[magenta]}magenta ${fg[cyan]}cyan${reset_color}"
}

function color() {
    perl ~/dotfiles/etc/scripts/colors.pl
}

function take() {
  mkdir -p $1 && cd $1
}

# convert sjis -> utf8
function s2u() {
  iconv -f SHIFT_JIS -t UTF-8 $1 -o $2
}

# for procon i/o testcase
function iotest() {
    for f in test/*.in ; do ; colordiff <(cat $f | ./a.out) ${f%.in}.out ; done
}

function fbr() {
  local branches branch
  branches=$(git branch -vv) &&
    branch=$(echo "$branches" | fzf +m) &&
    git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

ga() {
  local out q n addfiles
  while out=$(
      git status --short |
      awk '{if (substr($0,2,1) !~ / /) print $2}' |
      fzf-tmux --ansi --multi --exit-0 --expect=ctrl-d); do
    q=$(head -1 <<< "$out")
    n=$[$(wc -l <<< "$out") - 1]
    addfiles=(`echo $(tail "-$n" <<< "$out")`)
    [[ -z "$addfiles" ]] && continue
    if [ "$q" = ctrl-d ]; then
      git diff --color=always $addfiles | less -R
    else
      git add $addfiles
    fi
  done
}

lock() {
  i3lock --insidecolor=88282828 \
  --blur=30 \
  --keyhlcolor=d79921AA \
  --bshlcolor=076678AA \
  --textcolor=98971aAA \
  --ringcolor=282828AA \
  --ringvercolor=b8bb26AA \
  --insidecolor=282828AA \
  --insidevercolor=282828AA \
  --insidewrongcolor=9d0006AA \
  --timecolor=98971aAA \
  --datecolor=98971aAA \
  --datesize=18 \
  --clock
}
