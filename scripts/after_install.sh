#!/bin/bash
set -e
export PATH=/usr/local/bin:$PATH
cd /var/www/myapp
npm ci --omit=dev --no-audit --no-fund
