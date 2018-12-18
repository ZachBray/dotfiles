#!/bin/sh

set -eux

user=$1

apt update
apt install -y zsh \
               powerline \
               fonts-powerline \
               zsh-theme-powerlevel9k \
               zsh-syntax-highlighting

usermod -s /usr/bin/zsh $user
