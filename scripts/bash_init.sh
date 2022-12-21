#!/usr/bin/bash

if [[ "$(uname)" == *"Darwin"* ]]; then
    cat .zshrc >> ~/.zshrc
else
    cat .bashrc >> ~/.bashrc
fi
