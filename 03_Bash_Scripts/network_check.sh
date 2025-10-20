#!/bin/bash
LOGFILE=~/Linux-System-Foundations/04_Logs/network_log_$(date +%Y-%m-%d).md

echo "## 🌐 Network Check — $(date)" >> $LOGFILE

# Ping tests
echo "### Ping Test to 8.8.8.8" >> $LOGFILE
ping -c 4 8.8.8.8 >> $LOGFILE

echo "### Ping Test to 1.1.1.1" >> $LOGFILE
ping -c 4 1.1.1.1 >> $LOGFILE

# DNS Resolution
echo "### DNS Lookup for github.com" >> $LOGFILE
nslookup github.com >> $LOGFILE

# Firewall status
echo "### Firewall Status (ufw)" >> $LOGFILE
sudo ufw status verbose >> $LOGFILE

# Network interfaces
echo "### Interfaces & IPs" >> $LOGFILE
ip addr show >> $LOGFILE

# Git repository auto-sync
for repo in ~/Linux-System-Foundations ~/JavaScript-Learning ~/ESP32-Learning ~/Cybersecurity-Learning; do
    if [ -d "$repo/.git" ]; then
        git -C $repo add .
        git -C $repo commit -m "Auto-update: Network & Git Check $(date)" || echo "No changes to commit in $repo"
        git -C $repo push
    fi
done
