#!/bin/bash
set -e
mkdir -p /tmp/bin
ln -sf "$(pwd)/gulp/node_modules/@ffmpeg-installer/linux-x64/ffmpeg" /tmp/bin/ffmpeg
export PATH=/tmp/bin:$PATH
export NODE_OPTIONS=--openssl-legacy-provider
cp -n src/js/core/config.local.template.js src/js/core/config.local.js
cd gulp
yarn gulp build.web-shapezio
