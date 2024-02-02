#!/bin/bash

# Check if an IP address is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: 5-is_the_host_on_the_network {8.8.8.8}"
  exit 1
fi

# Store the provided IP address in a variable
IP_ADDRESS=$1

# Print the message before pinging
echo "Pinging $IP_ADDRESS 5 times..."

# Ping the IP address 5 times and display the output
ping -c 5 $IP_ADDRESS