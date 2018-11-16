#!/bin/bash
#
# Commit Central Script for LH Kernel
#
# Copyright (C) 2018 Luan Halaiko and LuizPauloDamaceno (tecnotailsplays@gmail.com) (luizpaulodamaceno@live.com)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

#Colors
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
brown='\033[0;33m'
blue='\033[0;34m'
purple='\033[1;35m'
cyan='\033[0;36m'
nc='\033[0m'

#LH Logo
echo -e "$blue############################ WELCOME TO #############################"
echo -e "\n######################### LH COMMIT CENTRAL #########################$nc"

#Main script
while true; do
echo -e "\n$green[1]Cherry-pick"
echo -e "[2]Revert"
echo -e "[3]Quit$nc"
echo -ne "\n$brown(i)Please enter a choice[1-5]:$nc "

read choice

if [ "$choice" == "1" ]; then
 while true
 do
        echo "Cherry-pick: "
        read REVERT
        git cherry-pick $REVERT
        echo "DONE"
 done
fi

if [ "$choice" == "2" ]; then
 while true
 do
        echo "Revert: "
        read REVERT
        git revert $REVERT
        echo "DONE"
 done
fi

if [ "$choice" == "3" ]; then
 exit 1
fi
done
