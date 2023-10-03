#!/usr/bin/env sh

apt install nala

nala install git \
             curl \
             python3-pip \
             pipx \
             build-essential \      # ly
             libpam0g-dev \         # ly
             libxcb-xkb-dev \       # ly
             xserver-xorg \         # qtile
             libwlroots-dev \       # qtile
             libxkbcommon-dev \     # qtile
             libpangocairo-1.0-0 \  # qtile
             flatpak
