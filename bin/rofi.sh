#!/bin/bash

# opacity 00~FF
alpha="CC"
white="ebdbb2"
green="98971a"
yellow="d79921"
red="9d0006"

modi="run,window,system:$HOME/dotfiles/bin/rofi_system_menu.sh,combi"

options=(
  -modi         "$modi"
  -combi-modi   "$modi"
  -show         "run"
  -font         "Roboto Mono Regular 16"
  -width        "1000"
  -padding      "15"
  -lines        "8"
  -location     "0"
  -fixed-num-lines
  -hide-scrollbar
  -sidebar-mode

  -kb-row-down      "Alt+j"
  -kb-row-up        "Alt+k"
  -kb-cancel        "Escape,Control+g,Control+bracketleft,Control+c"
  -kb-mode-next     "Shift+Right,Alt+l,Control+Tab"
  -kb-mode-previous "Shift+Left,Alt+h,Control+Shift+i"

  -color-enabled        "true"
  ## window         bg                   border               separator
  -color-window    "argb:${alpha}282828, argb:${alpha}000000, argb:${alpha}d79921"

  ## text & cursor  bg             fg                   bg (alt)       bg (highlight)       fg (highlight)
  -color-normal    "argb:00000000, argb:${alpha}${white}, argb:00000000, argb:${alpha}${yellow}, argb:${alpha}3c3836"
  -color-active    "argb:00000000, argb:${alpha}${white}, argb:00000000, argb:${alpha}d79921, argb:${alpha}3c3836"
  -color-urgent    "argb:00000000, argb:${alpha}9d0006, argb:00000000, argb:${alpha}8f3f71, argb:${alpha}d3869b"
)


exec rofi "$@" "${options[@]}"
