#!/bin/sh

set -eux

sudo sh configure_zsh.sh $USER
sudo sh install_tmux.sh
sudo sh install_keymaps.sh
