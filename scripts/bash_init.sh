#!/usr/bin/bash

if [[ "$(uname)" == *"Darwin"* ]]; then
    cat bashrc.sh >> ~/.zshrc
else
    cat bashrc.sh >> ~/.bashrc
fi
