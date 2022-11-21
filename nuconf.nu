
######################
#                    #
# personal shortcuts #
#                    #
######################

alias setclip = xclip -selection c
alias getclip = xclip -selection c -o
alias pwdc = $env.PWD | setclip

def-env mc [new_dir: string] {
    mkdir $new_dir
    cd $new_dir
}

if not ('~/.bash_aliases' | path exists) {
    touch ~/.bash_aliases
}

def-env aliad [short: string] {
    let aline = $"alias ($short) = ($env.PWD)"
    $aline
    echo $"($short) -> ($env.PWD)"
    $aline | save --append ~/.bash_aliases
}
