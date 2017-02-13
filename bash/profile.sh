#!/bin/bash

# Load the shell dotfiles
source $HOME/.bash_prompt
source $HOME/.bash_aliases

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Rust source code (used with racer utility)
export RUST_SRC_PATH=$HOME/Documents/GitHub/rust/src

# Java installation path
if [[ $(uname) == "Darwin" ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
else
    export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")
fi

# Android SDK
export ANDROID_HOME=$HOME/.local/share/android-sdk

# Configure PATH
PATH=$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.local/share/android-sdk/tools:$HOME/.local/share/android-sdk/platform-tools
export PATH