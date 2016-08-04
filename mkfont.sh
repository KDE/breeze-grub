#!/bin/sh

cd breeze

mk="grub-mkfont -v"

input="/usr/share/fonts/truetype/unifont/unifont.ttf"
$mk -s 14 -o unifont-regular-14.pf2 $input
$mk -s 16 -o unifont-regular-16.pf2 $input
$mk -s 16 -o unifont-bold-16.pf2 -b $input
$mk -s 32 -o unifont-regular-32.pf2 $input
