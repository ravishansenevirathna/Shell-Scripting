#!/bin/bash

release_file=/etc/os-release

check_exit_status() {
        if [ $? -ne 0 ]
        then
        echo "an error ...................................."
        fi
}

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
    if [ $? -ne 0 ]
    then
        echo "an error occurred"
    fi
fi

if grep -q "Ubuntu" $release_file || grep -q "Dabian" $release_file
then
    # The host is based on Ubuntu or Debian,
    # run the apt update command
    sudo apt update
    # following command is wrong, I want to check the exit code.
    sudo acpt dist-upgrade 
    check_exit_status
fi
