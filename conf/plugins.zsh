# zplug install list

zplug "mollifier/cd-bookmark"
zplug "marzocchi/zsh-notify"
zplug "soimort/translate-shell"

if ! zplug check --verbose; then
    printf "install zplugin? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

# zsh-notify
zstyle ':notify:*' notifier /usr/bin/notify-send
zstyle ':notify:*' command-complete-timeout 10
zstyle ':notify:*' activate-terminal yes
zstyle ':notify:*' success-icon "/usr/share/icons/Numix-Circle/48/apps/Terminal.svg"
zstyle ':notify:*' error-icon "/usr/share/icons/Numix/48/status/error.svg"

# zstyle ':notify:*' success-title "#Success."
# zstyle ':notify:*' error-title "#Fail."