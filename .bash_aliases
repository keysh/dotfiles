#!/bin/bash

# Check for ls version
if [[ $(uname) == "Darwin" ]]; then
  ls_color="-G"
else
  ls_color="--color"
fi

# List files and directories
alias ls="ls -lh ${ls_color}"
alias ll="ls -lhA ${ls_color}"

# Enable colored `grep` output
alias grep="grep --color=auto"

# Print current week number
alias week="date +%V"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
