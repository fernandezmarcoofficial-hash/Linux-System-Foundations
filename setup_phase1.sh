#!/bin/bash
# ========================================
# Phase 1: Linux System Foundations Setup
# Author: Marco Fernandez
# ========================================

# 1️⃣ Create folder structure
BASE=~/Linux-System-Foundations
mkdir -p $BASE/{01_Basics,02_System_Maintenance,03_Bash_Scripts,04_Logs}

# 2️⃣ Create README.md if not exists
README=$BASE/README.md
if [ ! -f "$README" ]; then
cat << 'EOF' > $README
# 🧱 Linux System Foundations

This repository contains automation scripts, logs, and documentation
for learning and maintaining Linux systems (Mint/Kali/Parrot).

## Folder Overview
- 01_Basics: Basic commands, examples, notes
- 02_System_Maintenance: Scripts for updates, cleanup
- 03_Bash_Scripts: Automation scripts
- 04_Logs: Markdown logs for daily automation
EOF
fi

# 3️⃣ Create system health script
SCRIPT=$BASE/03_Bash_Scripts/system_check.sh
cat << 'EOF' > $SCRIPT
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
EOF

# Make script executable
chmod +x $SCRIPT

# 4️⃣ Create a daily learning log template
LOG=$BASE/04_Logs/daily_learning_log.md
if [ ! -f "$LOG" ]; then
cat << 'EOF' > $LOG
# 🧠 Linux System Foundations — Daily Log

## Date: YYYY-MM-DD
### Learned Today:
- 

### Next Steps:
- 
EOF
fi

# 5️⃣ Setup cron job for daily automation (9:00 AM)
CRON="0 9 * * * $SCRIPT"
(crontab -l 2>/dev/null | grep -v -F "$SCRIPT" ; echo "$CRON") | crontab -

echo "✅ Phase 1 setup complete!"
echo "System health script: $SCRIPT"
echo "Daily log: $LOG"
echo "Cron job scheduled for 9:00 AM daily."
