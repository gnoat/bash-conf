#!/usr/bin/bash

if [[ "$1" == "mac" ]]; then
    cat bashrc.sh >> ~/.zshrc
else
    cat bashrc.sh >> ~/.bashrc
fi
