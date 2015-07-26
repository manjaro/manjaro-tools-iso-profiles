#!/bin/bash

rm -f /var/lib/pacman/db.lck

pacman -Syyu --noconfirm
pacman -Su --noconfirm
pacman -Su --noconfirm
pacman -R --noconfirm palemoon-bin
pacman -S --noconfirm linux-netbook-manjaro palemoon-atom-bin
