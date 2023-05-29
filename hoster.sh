#!/bin/bash

# Check the user's operating system
os=$(uname)

if [[ "$os" == "Linux" ]]; then
    # Add the line to /etc/hosts
    if echo "192.168.0.240    inctic.wiriga.local" | sudo tee -a /etc/hosts >/dev/null; then
        echo "Added the line to /etc/hosts."
    else
        echo "Failed to add the line to /etc/hosts."
        exit 1
    fi
elif [[ "$os" == "Darwin" ]]; then
    # Add the line to /etc/hosts
    if echo "192.168.0.240    inctic.wiriga.local" | sudo tee -a /etc/hosts >/dev/null; then
        echo "Added the line to /etc/hosts."
    else
        echo "Failed to add the line to /etc/hosts."
        exit 1
    fi
elif [[ "$os" == "FreeBSD" ]]; then
    # Add the line to /etc/hosts
    if echo "192.168.0.240    inctic.wiriga.local" | sudo tee -a /etc/hosts >/dev/null; then
        echo "Added the line to /etc/hosts."
    else
        echo "Failed to add the line to /etc/hosts."
        exit 1
    fi
elif [[ "$os" == "MINGW"* ]]; then
    # Add the line to C:\Windows\System32\drivers\etc\hosts
    if echo "192.168.0.240    inctic.wiriga.local" | tee -a /mnt/c/Windows/System32/drivers/etc/hosts >/dev/null; then
        echo "Added the line to C:\Windows\System32\drivers\etc\hosts."
    else
        echo "Failed to add the line to C:\Windows\System32\drivers\etc\hosts."
        exit 1
    fi
else
    echo "Unsupported operating system."
    exit 1
fi
