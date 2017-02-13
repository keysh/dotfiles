#!/bin/bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Local profile
[ -n "$PS1" ] && source $HOME/.bash_profile
