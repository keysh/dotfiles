#!/bin/bash

# Configure git globals
function git_details {
    read -p "What is your user name? " user;
    read -p "What is your email? " email;

    echo "[user]" >> ~/.gitconfig;
    echo "    name  =" $user >> ~/.gitconfig;
    echo "    email =" $email >> ~/.gitconfig;
    echo >> ~/.gitconfig;
}

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

# Set credential helper on macOS
if [[ $(uname) == "Darwin" ]]; then
    echo "[credential]" >> ~/.gitconfig;
    echo "    helper = osxkeychain" >> ~/.gitconfig;
    echo >> ~/.gitconfig;
fi

# Ask for git globals
read -p "Do you wish to configure git user/email? [Y/n] " git
case $git in
    ""|y|Y*)
        git_details;
        ;;
    *)
        echo "Git details skipped.";
        ;;  
esac

printf "\n[OK] Configuration files were successfully installed.\n"