#!/bin/bash

# Bash related files
cp ./bash/config.sh  ~/.bashrc
cp ./bash/profile.sh ~/.bash_profile
cp ./bash/prompt.sh  ~/.bash_prompt
cp ./bash/aliases.sh ~/.bash_aliases
cp ./bash/input.sh   ~/.inputrc

# Git configuration
cp ./git/config.git  ~/.gitconfig
cp ./git/ignore.git  ~/.gitignore

# Vim configuration
cp ./vim/config.vim  ~/.vimrc

echo "Configuration files were successfully installed."