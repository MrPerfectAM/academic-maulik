#!/bin/bash
# Author: Maulik (24BAI10905)
# Purpose: Generate a personalized open-source manifesto based on user input

echo "================================================================================"
echo "                   Vlc AUDIT - MANIFESTO GENERATOR           "
echo "================================================================================"

echo "Please answer the following questions to generate your open-source manifesto:"
read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "What do you value most about open-source software? " value

echo "My name is $name, and I believe in the power of open-source software. My favorite project is $project, which embodies the spirit of collaboration and community. I value $value, as it allows me to contribute to and learn from the global open-source community."

echo "Manifesto saved to $(whoami).txt"
echo "My name is $name, and I believe in the power of open-source software. My favorite project is $project, which embodies the spirit of collaboration and community. I value $value, as it allows me to contribute to and learn from the global open-source community." > $(whoami).txt
echo "================================================================================"