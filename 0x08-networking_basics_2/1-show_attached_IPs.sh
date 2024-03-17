#!/usr/bin/env bash

# Script tp display all IPV4 IPS on a machine
# It prints the IP address of the machine.
# Displays all acive IPv4 addresses.

ifconfig | grep "inet addr" | cut -d ':' -f2 | cut -d ' ' -f1

