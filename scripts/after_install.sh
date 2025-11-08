#!/bin/bash
set -e

echo "--- [AfterInstall] Copying new build to nginx web root ---"

sudo cp -r /tmp/codedeploy-deploy/deploy/* /var/www/react/

sudo chown -R www-data:www-data /var/www/react
sudo chmod -R 755 /var/www/react

echo "New files deployed successfully!"