#!/usr/bin/env bash

# Add the custom entries to the /etc/hosts file
echo "127.0.0.2   localhost" | sudo tee -a /etc/hosts
echo "8.8.8.8     facebook.com" | sudo tee -a /etc/hosts

# Restart the DNS resolver service to apply the changes
sudo systemctl restart systemd-resolved
