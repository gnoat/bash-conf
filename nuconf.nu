
######################
#                    #
# personal shortcuts #
#                    #
######################

alias setclip = xclip -selection c
alias getclip = xclip -selection c -o
alias pwdc = (echo $env.PWD | setclip)

def-env mc [new_dir: string] {
    mkdir $new_dir
    cd $new_dir
}

if not ('~/.config/.shorts' | path exists) {
    mkdir ~/.config/.shorts
}

def-env short [p1: string, p2: string = ""] {
    let loc = if $p1 == "add" {
        let loc = $"~/.config/.shorts/($p2)"
        if not ($loc | path exists) {
            echo $"[cmd] `short ($p2)` -> ($env.PWD)"
            ln -s $env.PWD $loc
        }
        $loc
    } else {
        $"~/.config/.shorts/($p1)"
    }

    cd $loc
}

