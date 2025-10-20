#!/bin/bash
# ========================================
# Phase 2: Networking + Git Setup
# Author: Marco Fernandez
# ========================================

BASE=~/Linux-System-Foundations
SCRIPTS=$BASE/03_Bash_Scripts
LOGS=$BASE/04_Logs

# 1️⃣ Ensure folders exist
mkdir -p $SCRIPTS $LOGS

# 2️⃣ Create network_check.sh script
NETWORK_SCRIPT=$SCRIPTS/network_check.sh
cat << 'EOF' > $NETWORK_SCRIPT
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
EOF

# 3️⃣ Make script executable
chmod +x $NETWORK_SCRIPT

# 4️⃣ Setup cron job for daily automation at 10:00 AM
CRON_JOB="0 10 * * * $NETWORK_SCRIPT"
(crontab -l 2>/dev/null | grep -v -F "$NETWORK_SCRIPT" ; echo "$CRON_JOB") | crontab -

echo "✅ Phase 2 setup complete!"
echo "Network check script: $NETWORK_SCRIPT"
echo "Cron job scheduled for 10:00 AM daily."
