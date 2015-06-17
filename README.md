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

The package lists have been unified and simplified, now supporting init specific package selection.

The Packages-Your_Desktop in the profile in joined with shared/Packages-Custom, requiring manjaro-tools from the devel branch currently.


########* Example:

Packages-Lxqt-minimal is joined at build with shared/Packages-Custom


Please review your lists if you use a custom package list and adopt to the changes!
Profiles that use a custom Package list have been set to use symlinks to shared.
