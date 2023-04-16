#!/bin/bash
#
echo "Do you want to install yay package manager for arch based systems?(yes/no)"
read -r ans

yay_installer() {
	echo "This process will require sudo priviledges."
	sleep .5
	sudo pacman -S --needed base-devel git || true
	cd ~/Downloads
	git clone https://aur.archlinux.org/yay-git.git || true
	cd yay-git && makepkg -sri || return
}

if [[ "$ans" == "yes" ]]; then
	SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
	yay_installer
	yay --version
else
	echo "Have a good day!"
	exit 1
fi
