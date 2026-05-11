#!/usr/bin/env bash

# Install packages
apt-get --yes install htop locales curl

# Default locale settings
sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
locale-gen
localectl set-locale LANG=en_US.UTF-8
