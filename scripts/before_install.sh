#!/bin/bash
set -e
echo "Parando la aplicación..."
systemctl stop myapp || true
rm -rf /var/www/myapp
mkdir -p /var/www/myapp
