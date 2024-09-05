#!/usr/bin/env bash

# Install required packages
apt-get --yes update
apt-get --yes install gpg

# Add Grafana's official GPG key
curl -fsSL https://apt.grafana.com/gpg-full.key -o /etc/apt/keyrings/grafana.gpg | gpg --dearmor | tee /etc/apt/keyrings/grafana.gpg > /dev/null

# Add Grafana's official repository to Apt sources
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com/ stable main" | tee /etc/apt/sources.list.d/grafana.list

# Install packages
apt-get --yes install htop qemu-guest-agent alloy
