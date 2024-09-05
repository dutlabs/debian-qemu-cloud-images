#!/usr/bin/env bash

# Add Grafana's official GPG key
curl -fsSL https://apt.grafana.com/gpg.key -o /etc/apt/keyrings/grafana.gpg | gpg --dearmor

# Add Grafana's official repository to Apt sources
cat > /etc/apt/sources.list.d/grafana.list <<-EOF
    deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com $(lsb_release -cs) stable main
EOF

# Install packages
apt-get --yes update
apt-get --yes install htop qemu-guest-agent alloy
