#!/bin/bash

cd /opt/manjaro-netbook/

if zenity --info --title="Netbook edition configuration" --text="Now we will complete the Netbook edition configuration.\nYou will be asked to enter your password."; then
  gksu ./atom-optimisation-ui-root.sh
fi
