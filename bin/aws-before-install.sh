#!/usr/bin/env bash

# Create directory for codeDeploy to copy the release to.
# I want to make sure that the directory is clean and has nothing left over from
# previous deployments. The servers auto scale so the directory may or may not
# exist.
if [ -d /var/www/url-to-pdf ]; then
  rm -rf /var/www/url-to-pdf
fi

mkdir -vp /var/www/url-to-pdf

