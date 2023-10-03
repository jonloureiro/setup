#!/usr/bin/env sh

apt install nala

nala install git \
             curl \
             python3-pip \
             pipx \
             build-essential \
             libpam0g-dev \
             libxcb-xkb-dev \
             xserver-xorg \
             libwlroots-dev \
             libxkbcommon-dev \
             libpangocairo-1.0-0 \
             flatpak
