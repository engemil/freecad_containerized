#!/bin/bash

#
# Script for starting container
#
# HOW-TO-USE:
# 1. Change permission: sudo chmod +x ./start.sh
# 2. Execute script: sudo ./start.sh
#
# NOTE: If you do not have sudo installed, I assume you are
#       using a root user and do not need sudo for this script.
#

##################################################

# Function to check if running as root
check_sudo() {
    if [ "$(id -u)" -eq 0 ]; then
        return 0  # Running as root
    else
        return 1  # Not running as root
    fi
}

# The command(s)
COMMAND1="xhost -local:docker"
COMMAND2="xhost +local:docker"
COMMAND3="docker compose -f ./docker-compose.yml up -d"

if check_sudo; then
    # Running as root, execute command
    $COMMAND1
    $COMMAND2
    $COMMAND3
else
    # Not running as root, use sudo for comannd
    sudo $COMMAND1
    sudo $COMMAND2
    sudo $COMMAND3
fi

