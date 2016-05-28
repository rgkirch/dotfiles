#!/usr/bin/env bash

cd ~/
pacman -Sy
pacman -R vim vim-runtime gvim vim-tiny vim-common vim-gui-common
pacman -S git htop curl wget zsh cmake tree dkms doxygen
