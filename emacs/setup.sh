#!/bin/bash

# Setup script to build emacs configutations. It:
# 1. Provides init.el by copying init.el inside emacs config folder($HOME/.emacs.d)
# 2. Set up all configuration files accordingly
# 	1. Creates settings folder
#	2. Link all configs files from this directory to previously created folder

DOTFILES_EMACS=$(pwd)
DOTFILES_SETTINGS_FOLDER=/settings
EMACS_CONFIG_FOLDER=$HOME/.emacs.d

echo "Copying init.el to ${EMACS_CONFIG_FOLDER}"
ln $DOTFILES_EMACS/init.el $EMACS_CONFIG_FOLDER/init.el

echo "Creating settings folder"
#mkdir
mkdir $EMACS_CONFIG_FOLDER$DOTFILES_SETTINGS_FOLDER

echo "Linking configuration files in emacs configutations folder"
for filename in $(ls $DOTFILES_EMACS$DOTFILES_SETTINGS_FOLDER)
do
	ln $DOTFILES_EMACS$DOTFILES_SETTINGS_FOLDER/$filename $EMACS_CONFIG_FOLDER$DOTFILES_SETTINGS_FOLDER/$filename
done

