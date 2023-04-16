#!/bin/bash

echo ""
echo "[.] Installing yay package manager for arch based systems..."

yay_installer() {
	echo "[.] This process will require sudo priviledges."
	sleep .5
	sudo pacman -S --needed base-devel git || true
	cd ~/Downloads || return
	git clone https://aur.archlinux.org/yay-git.git || true
	cd yay-git && makepkg -sri || return
}

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
cd "$SCRIPT_DIR" || return
yay_installer
yay --version
