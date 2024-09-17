#!/bin/bash

# common_commands.sh
shellcheck provisioning/common/setup.sh

sudo apt-get --fix-broken install
sudo apt-get install -y ubuntu-pro-client
sudo apt-get dist-upgrade --with-new-pkgs
sudo apt-get dist-upgrade --auto-remove
