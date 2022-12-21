bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

if [ -f ~/.config/.shorts ]; then
    . ~/.config/.shorts
fi

# clipboard shortcuts
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias pwdc="pwd | setclip"

# sets mc to make a directory and cd into it
mc() { mkdir $1; cd $1; }

short() {
    if [[ "$1" == "add" ]]; then
        if [ ! -f  "~/.config/.shorts/${2}" ]; then
            echo "[cmd] \`short ${2}\` -> ${PWD}"
            ln -sf $PWD "~/.config/.shorts/${2}"
        fi
    else
        cd ~/.config/.shorts/${1}
    fi
}
