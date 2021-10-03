#!/bin/bash
echo "Cloning dependencies"
repo init -u git://github.com/DotOS/manifest.git -b dot11  &> /dev/null
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags  &> /dev/null
source build/envsetup.sh  &> /dev/null
lunch dot_walleye-userdebug  &> /dev/null
make bacon  &> /dev/null
