#!/usr/bin/env bash
# deps: qemu, base

# Add Microsoft's official GPG key:
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc -o /etc/apt/keyrings/microsoft.asc

# Add the repository to Apt sources:
cat > /etc/apt/sources.list.d/vscode.sources <<EOF
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/microsoft.asc
EOF

# Install VS Code package
apt-get --yes update
apt-get --yes install code
