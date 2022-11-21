
######################
#                    #
# personal shortcuts #
#                    #
######################

# set vim bindings
set -o vi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# clipboard shortcuts
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias pwdc="pwd | setclip"

# sets mc to make a directory and cd into it
mc() { mkdir $1; cd $1; }

# creates an permanent alias for the current working directory
aliad() {
    export aline="alias $1=\"cd "$(pwd)"\""
    echo "$1 -> $(pwd)"
    echo "$aline" >> ~/.bash_aliases
    source ~/.bash_aliases
}
