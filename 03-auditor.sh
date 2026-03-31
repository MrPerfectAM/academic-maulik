#!/bin/bash
# Author: Maulik (24BAI10905)
# Purpose: Audit system and Vlc-specific directories, reporting size, ownership, and file permissions

echo "================================================================================"
echo "                   Vlc AUDIT - DIRECTORY AUDITOR              "
echo "================================================================================"

dirs=("/etc" "/var/log" "/usr/bin" "/usr/lib" "/home/Maulik/.config/vlc" "/var/lib/vlc")
for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        echo "$dir"
        ls -l "$dir" | awk '{print $5, $1, $3}'
    else
        echo "$dir does not exist."
    fi
done
echo "================================================================================"