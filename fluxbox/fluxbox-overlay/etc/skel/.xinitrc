#!/bin/sh
# ~/.xinitrc
# Executed by startx (run your window manager from here)

## Ensure that GTK themes are applied uniformly in the Desktop Environment
export GTK2_RC_FILES="$HOME/.gtkrc-2.0" 

## Apps at startup
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#nitrogen --restore &
#compton -c --shadow-exclude 'class_g = "wbar"' &
#nm-applet &
#volumeicon &
#cbatticon &
#pamac-tray &
#(sleep 8s && wbar) &

exec startfluxbox
