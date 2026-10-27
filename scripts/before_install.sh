#!/bin/bash
set -e
echo "Parando la aplicación..."
systemctl stop myapp || true
rm -rf /var/www/myapp
mkdir -p /var/www/myapp
chown ec2-user:ec2-user /var/www/myapp
