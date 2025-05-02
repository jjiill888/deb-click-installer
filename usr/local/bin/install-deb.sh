#!/bin/bash

# If not running as root, re-run this script using sudo (triggers NOPASSWD if configured)
if [[ $EUID -ne 0 ]]; then
    exec sudo "$0" "$@"
fi

DEB_FILE="$1"

# Prepend './' if not a full or relative path
if [[ ! "$DEB_FILE" =~ ^/ && ! "$DEB_FILE" =~ ^\./ ]]; then
    DEB_FILE="./$DEB_FILE"
fi

echo "Installing $DEB_FILE ..."
apt install -y "$DEB_FILE"

# Keep terminal open
echo
read -p "Press Enter to close this window..."
