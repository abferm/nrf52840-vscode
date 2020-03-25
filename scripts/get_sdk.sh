#!/bin/bash

git_root=`git rev-parse --show-toplevel`

# Get and install GCC for embedded ARM
wget -O /tmp/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2?revision=bc2c96c0-14b5-4bb4-9f18-bceb4050fee7?product=GNU-RM%20Downloads,64-bit,,Linux,7-2018-q2-update
sudo tar -C /usr/local/ -xjvf /tmp/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2

# # Get and extract nRF5 SDK
wget -O /tmp/nrf52sdk.zip https://www.nordicsemi.com/-/media/Software-and-other-downloads/SDKs/nRF5/Binaries/nRF5SDK160098a08e2.zip
unzip /tmp/nrf52sdk.zip -d ${git_root}/nrf-sdk

# # Clone and install micro-ecc
git clone --depth 1 https://github.com/kmackay/micro-ecc.git ${git_root}/nrf-sdk/external/micro-ecc/micro-ecc
(cd ${git_root}/nrf-sdk/external/micro-ecc/nrf52hf_armgcc/armgcc; make;)


