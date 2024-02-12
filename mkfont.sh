#!/bin/sh

# SPDX-License-Identifier: GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
# SPDX-FileCopyrightText: 2016 Harald Sitter <sitter@kde.org>

set -e

cd breeze

# As per grub's makefile:
# Arrows and lines are needed to draw the menu, so always include them
UNICODE_ARROWS="0x2190-0x2193"
UNICODE_LINES="0x2501-0x251B"
ASCII_RANGE="0x0-0x7f,${UNICODE_ARROWS},${UNICODE_LINES}"

mk="grub-mkfont -v"

input="/usr/share/fonts/truetype/unifont/unifont.ttf"

# Since we don't have localization we only need ASCII here (0x0-0x7f)
## The action description box font
$mk -s 14 -o unifont-regular-14.pf2 --range "$ASCII_RANGE" $input

# The entry fonts are full unicode since we don't know what they will contain
$mk -s 16 -o unifont-regular-16.pf2 $input
$mk -s 16 -o unifont-bold-16.pf2 --bold $input

echo ""
echo "MAKE SURE THE LICENSE HASN'T CHANGED!"
