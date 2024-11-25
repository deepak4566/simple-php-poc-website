#!/bin/bash

# Print starting message
echo "I am starting the game now"

# Check if the directory exists
if [ -d "/var/www/html/poc-php.cottonseeds.org" ]; then
  echo "/var/www/html/poc-php.cottonseeds.org exists"
  # Try to change directory to the project folder
  cd /var/www/html/poc-php.cottonseeds.org || { echo "Failed to enter the directory"; exit 1; }
else
  echo "/var/www/html/poc-php.cottonseeds.org does not exist"
  exit 1
fi

# Pull latest changes from git repository with sudo permissions
sudo git pull || { echo "Git pull failed"; exit 1; }

# Prompt for paraphrase
echo "Enter a paraphrase for the pull operation:"
read -r paraphrase

# Print the paraphrase to confirm
echo "You entered the paraphrase: $paraphrase"

# Continue with further operations, if any
