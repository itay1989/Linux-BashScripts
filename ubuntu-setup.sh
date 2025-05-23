#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print a message
echo "🛠️ Starting Ubuntu 22.04 Setup Script..."

# Update and upgrade system
echo "📦 Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install common tools
echo "🔧 Installing essential packages..."
sudo apt install -y curl wget git htop net-tools ufw unattended-upgrades apt-transport-https ca-certificates gnupg lsb-release software-properties-common

# Enable and configure UFW (Uncomplicated Firewall)
echo "🛡️ Configuring UFW firewall..."
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status

# Enable automatic security updates
echo "🔐 Enabling automatic security updates..."
sudo dpkg-reconfigure --priority=low unattended-upgrades

# Show system info
echo "📊 System info summary:"
uname -a
lsb_release -a

echo "✅ Setup completed successfully!"
