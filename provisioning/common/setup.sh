#!/bin/bash

# common_setup.sh
sudo canonical-livepatch enable-esm
sudo apt-get update
sudo apt-get install -y curl shellcheck
