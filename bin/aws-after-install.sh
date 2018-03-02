#!/usr/bin/env bash

# CodeDeploy doesn't replace existing files (wtf?) so we are rsyncing the files from a local copy
# Release directory is at root and it has to write files to the project directory.

rsync --delete --verbose --archive  /release/url-to-pdf /var/www/

cd /var/www/url-to-pdf

sudo chown -R deploy:deploy .

/usr/bin/yarn

sudo systemctl restart url-to-pdf.service

