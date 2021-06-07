#!/bin/sh

# SPDX-License-Identifier: GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
# SPDX-FileCopyrightText: 2016 Harald Sitter <sitter@kde.org>

cd breeze

mk="grub-mkfont -v"

input="/usr/share/fonts/truetype/unifont/unifont.ttf"
$mk -s 14 -o unifont-regular-14.pf2 $input
$mk -s 16 -o unifont-regular-16.pf2 $input
$mk -s 16 -o unifont-bold-16.pf2 -b $input
$mk -s 32 -o unifont-regular-32.pf2 $input
