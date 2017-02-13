#!/bin/bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Local profile
[ -n "$PS1" ] && source ~/.bash_profile
