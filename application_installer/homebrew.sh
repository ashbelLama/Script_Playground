#!/bin/bash

echo ""
echo "[.] Installing homebrew..."

## Homebrew installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## TODO: Check if homebrew is already installed and is added to PATH. If not, make changes accordingly

## Adding homebrew to PATH
echo "" >>/home/ashbel/.bash_profile
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile
echo "[.] Added homebrew to PATH"
echo ""

echo "[.] Sources: https://brew.sh/"
