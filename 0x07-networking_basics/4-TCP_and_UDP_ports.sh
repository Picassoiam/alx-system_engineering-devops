#!/bin/bash

# Use netstat to list listening sockets with PID and program name
netstat -tulpn | awk '{print $1, $4, $7}'
