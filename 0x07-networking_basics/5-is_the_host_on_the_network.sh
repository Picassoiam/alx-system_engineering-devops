#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide an IP address to ping."
  exit 1
fi

# Define the IP address to ping
ip_address="$1"

# Ping the IP address with 3 attempts and quiet output
ping -c 3 -q "$ip_address" > /dev/null 2>&1

# Check the exit status of the ping command
#if [ $? -eq 0 ]; then
#  echo "Ping to $ip_address successful!"
#else
#  echo "Ping to $ip_address failed."
#fi
for i in {1..5}; do
    ping_result=$(ping -c 1 "$ip_address")  # Capture ping output
    echo "$ping_result"
    sleep 1  # Optional delay between pings
done

