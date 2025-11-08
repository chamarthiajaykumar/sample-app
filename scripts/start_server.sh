#!/bin/bash
set -e

echo "--- [ApplicationStart] Starting nginx ---"

sudo systemctl enable nginx
sudo systemctl restart nginx

echo "Nginx started successfully"