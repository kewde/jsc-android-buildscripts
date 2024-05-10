#!/bin/bash -e

# download sources
rm -rf $PWD/build
TARGET_DIR=$PWD/build/download
GIT_TAG="webkitgtk-${npm_package_config_webkitGTK}"

mkdir -p $TARGET_DIR/webkit
git clone --branch $GIT_TAG https://github.com/WebKit/WebKit.git $TARGET_DIR/webkit/

mkdir -p $TARGET_DIR/icu
curl "https://chromium.googlesource.com/chromium/deps/icu/+archive/${npm_package_config_chromiumICUCommit}.tar.gz" | tar xzf - -C $TARGET_DIR/icu
