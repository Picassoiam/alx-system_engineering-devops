#!/usr/bin/env bash
# Pings an IP address received as an argument 5 times.

if [ $# -eq 0 ]; then
    echo "Usage: $0 {IP_ADDRESS}"
    exit 1
fi

# Extract IP address from argument
IP_ADDRESS=$1

# Ping the IP address 5 times
echo "Pinging $IP_ADDRESS 5 times..."
for (( i=1; i<=5; i++ )); do
    ping -c 1 $IP_ADDRESS > /dev/null
    if [ $? -eq 0 ]; then
        echo "Ping $i: $IP_ADDRESS is reachable"
    else
        echo "Ping $i: $IP_ADDRESS is unreachable"
    fi
done
