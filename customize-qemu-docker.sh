#!/usr/bin/env bash

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc

# Add Docker's official repository to Apt sources
cat > /etc/apt/sources.list.d/docker.list <<-EOF
    deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(lsb_release -cs) stable
EOF

# Install packages
apt-get --yes update
apt-get --yes install qemu-guest-agent htop docker-ce
