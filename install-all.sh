#!/usr/bin/env bash

# deps
sudo apt-get install -y -q stow

# provisioning
DOTFILES_DIR=`dirname "$0"`
TARGET_DIRS=("bash" "vim")
cd $DOTFILES_DIR
for DIR in ${TARGET_DIRS[@]}; do
  stow -v "$DIR"
done

