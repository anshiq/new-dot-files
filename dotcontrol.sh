#!/bin/bash
name=$1
git status 
git add ./dotfilesdata ./.tmux/plugins/tpm  .local/share/gnome-shell   ./.tmux.conf   ./dotcontrol.sh   ./.icons ./.config/lvim  ./.config/sublime-text ./.config/sublime-merge ./.config/Thunar   ./.themes ./.oh-my-zsh  
git status 
git commit -m "$name"
git push

