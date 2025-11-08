#!/bin/bash
set -e

echo "--- Before deployment - Cleaning up old deployment ---"

# Optional: stop nginx if running
if systemctl is-active --quiet nginx; then
    echo "Stopping nginx..."
    sudo systemctl stop nginx
fi

# Remove previous deployment if exists
if [ -d /var/www/react ]; then
    echo "Removing old app director..."
    sudo rm -rf /var/www/react
fi

# Recreate app directory
sudo mkdir -p /var/www/react
sudo chown -R www-data:www-data /var/www/react
echo "Create fresh /var/www/react directory"