#!/usr/bin/env bash

# Install required packages
apt-get --yes update
apt-get --yes install gpg

# Add Grafana's official GPG key
mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null

# Add Grafana's official repository to Apt sources
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

# Install packages
apt-get --yes update
apt-get --yes install htop qemu-guest-agent alloy
