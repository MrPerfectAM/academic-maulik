#!/bin/bash
# Author: Maulik (24BAI10905)
# Purpose: Analyze log files by searching for specified keywords and displaying the last 5 matching entries

echo "================================================================================"
echo "                   Vlc AUDIT - LOG FILE ANALYZER             "
echo "================================================================================"

target_log="$1"
keyword="$2"

echo "Target Log: $target_log"
echo "Keyword: $keyword"

count=0
while read -r line; do
    if echo "$line" | grep -q "$keyword"; then
        ((count++))
    fi
done < "$target_log"
echo "Total occurrences of '$keyword': $count"

tail -n 5 "$target_log" | grep "$keyword"
echo "================================================================================"