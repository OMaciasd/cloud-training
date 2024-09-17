#!/bin/bash

# utilities.sh
system_cleanup() {
    sudo apt-get clean
    sudo apt-get autoclean
    sudo apt-get upgrade -y
}
