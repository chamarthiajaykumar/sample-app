#!/bin/bash
set -e

echo "---- [ValidateService] Checking application health ----"

# Check if nginx is serving the site correctly
for i in {1..5}
do
  if curl -sSf http://localhost > /dev/null; then
    echo "Application is healthy!"
    exit 0
  fi
  echo "Attempt $i: App not yet responding, retrying in 3s..."
  sleep 3
done

echo "Application failed health check"
exit 1