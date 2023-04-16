#!/usr/bin/env bash
#
echo "Do you want to install Visual Studio Code?(yes/no)"
read -r ans

code_installer() {
	echo "This process may require sudo priviledges."
	sleep .5
	yay -S visual-studio-code-bin || return
}

code_uninstaller() {
	echo "This process will require sudo priviledges."
	sudo pacman -R visual-studio-code-bin
}

if [[ "$ans"  == "yes" ]]; then
	SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
	echo "$SCRIPT_DIR"
	code_installer
	code --version
else
	echo "Have a good day!"
	exit 1
fi
