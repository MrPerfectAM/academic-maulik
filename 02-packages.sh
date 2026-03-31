#!/bin/bash
# Author: Maulik (24BAI10905)
# Purpose: Check Vlc installation status, extract version, and print FOSS philosophy notes

echo "================================================================================"
echo "                   Vlc AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"

# Detect the package manager
if [ -x "$(command -v apt)" ]; then
    PACKAGE_MANAGER="apt"
    PACKAGE_NAME="vlc"
elif [ -x "$(command -v yum)" ]; then
    PACKAGE_MANAGER="yum"
    PACKAGE_NAME="vlc"
elif [ -x "$(command -v zypper)" ]; then
    PACKAGE_MANAGER="zypper"
    PACKAGE_NAME="vlc"
fi

# Check installation status and extract version
if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
    echo "Status: $PACKAGE_NAME is INSTALLED on this system."
    VERSION=$($PACKAGE_MANAGER show $PACKAGE_NAME | grep Version | cut -d ':' -f2-)
    echo "Version: $VERSION"
else
    echo "Status: $PACKAGE_NAME is NOT installed on this system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Vlc: A free and open-source media player that promotes freedom of choice and flexibility."
echo " - Firefox: A free and open-source web browser that advocates for online privacy and security."
echo " - LibreOffice: A free and open-source office suite that supports open document formats and community-driven development."
echo " - GIMP: A free and open-source raster graphics editor that demonstrates the power of collaborative software development."
echo "================================================================================"