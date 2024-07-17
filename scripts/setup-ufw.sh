#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install UFW
sudo apt install ufw -y

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow ssh

# Allow HTTP and HTTPS
sudo ufw allow http
sudo ufw allow https

# Enable UFW
sudo ufw enable

# Enable logging
sudo ufw logging on

# Reload UFW to apply changes
sudo ufw reload

# Check UFW status
sudo ufw status verbose
