#!/bin/bash

# Load the shell dotfiles
source ~/.bash_prompt
source ~/.bash_aliases

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Cargo modules bin
export PATH=$PATH:/Users/jakub/.cargo/bin