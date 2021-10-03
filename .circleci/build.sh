#!/bin/bash
echo "Cloning dependencies"
repo init -u git://github.com/DotOS/manifest.git -b dot11
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
source build/envsetup.sh
lunch dot_walleye-userdebug
make bacon
