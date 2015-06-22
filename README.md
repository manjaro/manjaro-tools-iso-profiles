manjaro-tools-iso-profiles
==========================

######* profile.conf

~~~
##########################################
###### use this file in the profile ######
##########################################

# possible values: openrc,systemd
# initsys="systemd"

# use multilib packages; x86_64 only
# multilib="true"

# the dispplaymanager
# displaymanager="lightdm"

# Set to false to disable autologin in the livecd
# autologin="true"

# use nonfree xorg drivers
# nonfree_xorg="true"

# use plymouth; initcpio hook
# plymouth_boot="true"

# use pxe boot; initcpio hook
# pxe_boot="true"

################ install ################

# unset defaults to given value
# kernel="linux319"

# unset defaults to given value
# efi_boot_loader="grub"

# set uefi partition size
# efi_part_size=32M

# unset defaults to given value
# plymouth_theme=manjaro-elegant

# unset defaults to given values
# names must match systemd service names
# start_systemd=('bluetooth' 'cronie' 'ModemManager' 'NetworkManager' 'org.cups.cupsd' 'tlp' 'tlp-sleep')

# unset defaults to given values,
# names must match openrc service names
# start_openrc=('acpid' 'bluetooth' 'consolekit' 'cronie' 'cupsd' 'dbus' 'syslog-ng' 'NetworkManager')

################# livecd #################

# unset defaults to given value
# hostname="manjaro"

# unset defaults to given value
# username="manjaro"

# unset defaults to given value
# password="manjaro"

# unset defaults to given values
# addgroups="video,audio,power,disk,storage,optical,network,lp,scanner,wheel"

# unset defaults to given values
# names must match systemd service names
# services in start_systemd array don't need to be listed here
# start_systemd_live=('livecd' 'mhwd-live' 'pacman-init' 'pacman-boot')

# unset defaults to given values,
# names must match openrc service names
# services in start_openrc array don't need to be listed here
# start_openrc_live=('livecd' 'mhwd-live' 'pacman-init' 'pacman-boot')
~~~

######* New Packagelist tags

~~~
>openrc
>systemd

>i686
>x86_64
>multilib

>nonfree_default
>nonfree_i686
>nonfree_x86_64
>nonfree_multilib
~~~

######* Packages
* Contains root image packages
* ideally no xorg

######* Packages-Custom/desktop
* Contains the custom image packages
* desktop environment packages go here
* this file is joined at build time with shared/Packages-Custom to pull in shared desktop packages

######* Packages-Xorg
* Contains the Xorg package repo

######* Packages-Livecd
* Contains packages you only want on livecd but not installed on the target system with installer
* default files are in shared folder and can be symlinked or defined in a real file

###### optional custom pacman.conf in profile

* for i686

~~~
pacman-default.conf
~~~

* for x86_64

~~~
pacman-multilib.conf
~~~

Please review your lists if you use a custom package list and adopt to the changes!
Profiles that use a custom Package list have been set to use symlinks to shared.
