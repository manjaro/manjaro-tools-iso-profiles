#!/bin/bash

cd /opt/manjaro-netbook/

if [ "$(uname -m)" == "i686" ] && \
   [ "$(grep Atom /proc/cpuinfo)" != "" ] && \
   zenity --question --title="Intel Atom optimisation" --text="We've detected that you have an Intel Atom CPU.\n\nWould you like to install the Atom-optimised kernel and web browser?\nIf unsure, click yes.\n\n<b>IMPORTANT:\nEnsure you have a working internet connection before proceeding.</b>\n\nA system update will be performed during this process."; then
   
      xfce4-terminal -e ./atom-optimisation-script.sh
fi

zenity --info --title="Netbook edition configuration" --text="<b>Configuration complete</b>.\n\nIf you are using the 64bit version or the system does not use an\nIntel Atom CPU, it will seem like nothing happened.\nThis is intended, in this case only some clean-up was performed.\n\nIf there was a problem with the script, i686 version users with\nIntel Atom CPU can always install the <b>linux-netbook-manjaro</b>\nand <b>palemoon-atom-bin</b> packages to get the Atom optimisations."

cd /tmp/
rm -f /etc/xdg/autostart/manjaro-netbook-atom-optimisations.desktop
rm -rf /opt/manjaro-netbook/
