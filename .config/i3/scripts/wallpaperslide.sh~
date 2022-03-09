#!/usr/bin/env bash

bgfolder="$HOME/.wallpapers"

# Changes to a random wallpaper in bgfolder after the seconds defined by bgtimer
while true
do
	wallpaperfile=$(ls $bgfolder | sort -R | head -n 1)
	feh --bg-fill $bgfolder/$wallpaperfile
	#cp $bgfolder/$wallpaperfile /usr/share/lightdmwallpaper/.current
	sleep 1200
done
