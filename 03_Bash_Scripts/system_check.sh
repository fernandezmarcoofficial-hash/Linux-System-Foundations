#!/bin/bash
LOGFILE=~/Linux-System-Foundations/04_Logs/system_log_$(date +%Y-%m-%d).md

echo "## 🧩 System Check — $(date)" >> $LOGFILE
echo "### 🕐 Uptime" >> $LOGFILE
uptime >> $LOGFILE

echo "### 💾 Disk Usage" >> $LOGFILE
df -h >> $LOGFILE

echo "### 🧠 Memory Usage" >> $LOGFILE
free -h >> $LOGFILE

echo "### ⚙️ Running Services (top 5 CPU)" >> $LOGFILE
ps -eo pid,comm,%cpu --sort=-%cpu | head -6 >> $LOGFILE

# Git auto-sync
git -C ~/Linux-System-Foundations add .
git -C ~/Linux-System-Foundations commit -m "Auto-update: System Check $(date)"
git -C ~/Linux-System-Foundations push
