#!/bin/bash
# network_check_and_log.sh
# Combines network checks and daily logging

LOG_DIR=~/Linux-System-Foundations/04_Logs
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/network_log_$(date +%F).md"

{
echo "## Network Check & Log - $(date '+%Y-%m-%d %H:%M:%S')"
echo ""

echo "### Ping Test (8.8.8.8)"
ping -c 4 8.8.8.8
echo ""

echo "### Network Interfaces"
ip addr show
echo ""

echo "### Routing Table"
ip route show
echo ""

echo "### DNS Resolution"
nslookup github.com
echo ""

echo "---"
} >> "$LOG_FILE"
