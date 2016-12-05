#!/bin/bash

# Reset colors
tput sgr0

# Color configuration
reset=$(tput sgr0)
bold=$(tput bold)
violet=$(tput setaf 61)

# Get git branch name
function branch {
    if [[ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == "0" ]]
    then
        branch_name=$(
            git symbolic-ref --quiet --short HEAD 2> /dev/null || \
            git rev-parse --short HEAD 2> /dev/null || \
            echo ""
        )

        if [[ -n $branch_name ]]
        then
            printf "[$branch_name]"
        else
            return
        fi       
    fi
}

PS1="\n"
PS1+="\[$bold\]\u\[$violet\] ‣ \[$reset\]"
PS1+="\[$bold\]\h\[$violet\] ‣ \[$reset\]"
PS1+="\[$bold\]\w\[$reset\] "
PS1+="\[$bold\]\[$violet\]\$(branch)\[$reset\]"
PS1+="\n"
PS1+="\$ "

export PS1
