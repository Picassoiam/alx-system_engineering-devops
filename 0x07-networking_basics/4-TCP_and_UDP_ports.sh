#!/bin/bash

# Only show listening sockets
# -t: TCP connections
# -u: UDP connections
# -l: Listening sockets
# -p: Process ID (PID) and name
# -n: Numerical addresses instead of resolving hostnames
ss -t -u -l -p -n

# Display headers if you want them
# echo "Protocol\tPort\tPID\tProgram Name"

# Loop through each line of output
while read -r protocol port pid name; do
  # Skip header line
  if [[ "$protocol" == "Protocol" ]]; then
    continue
  fi

  # Remove extra spaces and format output
  printf "%-9s %-6s %-5s %s\n" "$protocol" "$port" "$pid" "$name"
done
