#!/usr/bin/env bash

# Alloy
# Install required packages
apt-get --yes update
apt-get --yes install gpg

# Add Grafana's official GPG key
curl -fsSL https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null

# Add Grafana's official repository to Apt sources
sudo tee /etc/apt/sources.list.d/grafana.list <<-EOF
    deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main
EOF

# Docker
# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc

# Add Docker's official repository to Apt sources
cat > /etc/apt/sources.list.d/docker.list <<-EOF
    deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(lsb_release -cs) stable
EOF

# Update
apt-get --yes update
