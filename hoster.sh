#!/bin/bash

# Function to add entry to /etc/hosts file
add_entry_to_hosts() {
    echo "192.168.0.240    inctic.wiriga.local" | sudo tee -a /etc/hosts > /dev/null
    echo "Entry added to /etc/hosts"
}

# Check the operating system
os=$(uname -s)

# Add entry to /etc/hosts based on the operating system
case $os in
    Linux*)
        add_entry_to_hosts
        ;;
    Darwin*)
        add_entry_to_hosts
        ;;
    CYGWIN*|MINGW32*|MSYS*|MINGW*)
        # Running on Windows
        echo "This script does not support Windows"
        ;;
    *)
        echo "Unsupported operating system"
        ;;
esac
