#!/usr/bin/env bash

# Script tp display all IPV4 IPS on a machine
# It prints the IP address of the machine.
# Displays all acive IPv4 addresses.
ifconfig | grep -E "inet (addr:)?([0-9]*\.){3}[0-9]*" | cut -b 11-
