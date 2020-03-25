#!/bin/bash

wget -O /tmp/nrf-cli.tar.gz https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-10-x-x/10-7-0/nRFCommandLineTools1070Linuxamd64tar.gz
mkdir -p /tmp/nrf-cli/
tar -C /tmp/nrf-cli/ -xzf /tmp/nrf-cli.tar.gz
sudo dpkg -i /tmp/nrf-cli/*.deb || sudo apt-get -f install