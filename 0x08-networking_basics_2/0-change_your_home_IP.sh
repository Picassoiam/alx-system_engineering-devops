#!/usr/bin/env bash

# 1. Copy the existing hosts file to a new file called hosts.new
# 2. Write the new IP address and hostname to the hosts.new file
# 3. Copy the hosts.new file to the /etc/hosts file
cp /etc/hosts ~/hosts.new
127.0.0.2 localhost > ~/hosts.new
8.8.8.8  facebook.com >> ~/hosts.new
cp -f ~/hosts.new /etc/hosts

