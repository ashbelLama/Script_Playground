#!/bin/bash

# Check the user's operating system
os=$(uname)

if [[ "$os" == "Linux" ]]; then
    # Add the line to /etc/hosts
    echo "192.168.0.240    inctic.wiriga.local" | sudo tee -a /etc/hosts >/dev/null
#     echo "Added the line to /etc/hosts."
elif [[ "$os" == "Darwin" ]]; then
    # Add the line to /etc/hosts
    echo "192.168.0.240    inctic.wiriga.local" | sudo tee -a /etc/hosts >/dev/null
#     echo "Added the line to /etc/hosts."
elif [[ "$os" == "FreeBSD" ]]; then
    # Add the line to /etc/hosts
    echo "192.168.0.240    inctic.wiriga.local" | sudo tee -a /etc/hosts >/dev/null
#     echo "Added the line to /etc/hosts."
elif [[ "$os" == "MINGW"* ]]; then
    # Add the line to C:\Windows\System32\drivers\etc\hosts
    echo "192.168.0.240    inctic.wiriga.local" | tee -a /mnt/c/Windows/System32/drivers/etc/hosts >/dev/null
#     echo "Added the line to C:\Windows\System32\drivers\etc\hosts."
else
    echo "Unsupported operating system."
    exit 1
fi
