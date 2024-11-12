#!/bin/bash

release_file=/etc/os-release  # Corrected the variable name

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file || grep -q "Dabian" $release_file
then
    # The host is based on Ubuntu or Debian,
    # run the apt update command
    sudo apt update
    sudo apt dist-upgrade
fi
