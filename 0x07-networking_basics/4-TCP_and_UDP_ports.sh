#!/usr/bin/env bash

# Get the list of listening sockets and extract PID and program name
listening_sockets=$(netstat -tuln | grep 'LISTEN')

# Print headers
echo "PID   Program   Port"

# Loop through each listening socket
while read -r line; do
    pid=$(echo "$line" | awk '{print $7}' | awk -F'/' '{print $1}')
    port=$(echo "$line" | awk '{print $4}')
    program=$(basename "$(readlink /proc/$pid/exe)")
    echo "$pid    $program    $port"
done <<< "$listening_sockets"

