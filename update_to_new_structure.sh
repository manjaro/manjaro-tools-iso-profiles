#!/bin/bash

source /usr/lib/manjaro-tools/util.sh

for name in official community community-minimal;do
	mkdir $name
	read_set /etc/manjaro-tools/iso.d/$name
	for p in ${stack[@]};do
		mv $p $name/
		git rm -r $p
		for f in $name/$p/*;do
			if [[ -L $f ]];then
				target=$(readlink $f)
				ln -sf ../$target $f
			fi
		done
	done
done
git add -A
git commit -m "transition to new structure for manjaro-tools-0.9.15"
