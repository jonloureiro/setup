#!/usr/bin/env sh

mkdir -p "$HOME/.emacs.d"
ln -s "$(pwd)/.config/emacs/init.el" "$HOME/.emacs.d/init.el"
