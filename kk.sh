#!/bin/bash

export LOCALVERSION="-"`echo Color-V5+`
export CROSS_COMPILE=~/toolchain/bin/arm-eabi-
export ARCH=arm
export SUBARCH=arm
export KBUILD_BUILD_USER=soorajj
export KBUILD_BUILD_HOST="me.com"
echo
git checkout kk-4.4.2
make clean
echo "Making semaphore_mako_defconfig"
DATE_START=$(date +"%s")

make "semaphore_mako_defconfig"

echo "LOCALVERSION="$LOCALVERSION
echo "CROSS_COMPILE="$CROSS_COMPILE
echo "ARCH="$ARCH

make -j12 > /dev/null

echo "Build completed."
