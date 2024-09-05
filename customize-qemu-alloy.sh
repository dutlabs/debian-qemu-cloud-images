#!/usr/bin/env bash

# Add Grafana's official GPG key
mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg-full.key | gpg --dearmor | tee /etc/apt/keyrings/grafana.gpg > /dev/null

# Add Grafana's official repository to Apt sources
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | tee /etc/apt/sources.list.d/grafana.list

# Install packages
apt-get --yes update
apt-get --yes install htop qemu-guest-agent alloy
