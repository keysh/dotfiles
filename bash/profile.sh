#!/bin/bash

# Load the shell dotfiles
source ~/.bash_prompt
source ~/.bash_aliases

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Rust source code (used with racer utility)
export RUST_SRC_PATH=~/Documents/GitHub/rust/src

# Java installation path
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")

# Android SDK
export ANDROID_HOME=~/.local/share/android-sdk

# Configure PATH
PATH=$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.local/share/android-sdk/tools:$HOME/.local/share/android-sdk/platform-tools
export PATH