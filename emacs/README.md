# Read Me

## Structure

[init.el](./init.el): This is the main configuration file wich set up
global settings and import each config module.

[settings](./settings): This directory contains all modules.

## init.el

As said it contains the main configurations and links the modularized
config scripts.

It uses a subdirectory( */settings* ) that should live under
*$HOME/.emacs.d/*.

Simply link all files under this directory to *~/.emacs.d/settings*
and it should work.

**note:** At the moment it doesnt work with soft links.

`$ mkdir $HOME/.emacs.d/settings`

`$ ln path/to/dotfiles/emacs/settings/* $HOME/.emacs.d/settings/`

## Settings directory

Contains three config files at the moment.

  * [appearance.el][./appearance.el]: Has configuration regarding
  visualization of emacs.

  * [behaviour.el][./behaviour.el]: Holds configurations regarding how
  emacs works when editing. Such as: tab width and other stuff
  
  * [plugins.el][./plugins.el]: Holds plugins initialization. Uses the
    use-package macro.



[./appearance.el]: ./appearance.el "appearance"

[./behaviour.el]: ./behaviour.el "behaviour"

[./plugins.el]: ./plugins.el "plugins"
