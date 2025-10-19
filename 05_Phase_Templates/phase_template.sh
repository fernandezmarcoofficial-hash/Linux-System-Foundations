#!/bin/bash
# -------------------------------------
# Extended Phase Template Script
# -------------------------------------
# Usage: bash phase_template.sh <Phase-Folder-Name> <Phase-Number-or-Name> <HH:MM>
# Example: bash phase_template.sh ESP32-Learning phase3 11:00
# Author: Marco Fernandez
# Date: $(date +%Y-%m-%d)
# -------------------------------------

PHASE_NAME="$1"
PHASE_NUMBER="$2"
CRON_TIME="$3"

if [ -z "$PHASE_NAME" ] || [ -z "$PHASE_NUMBER" ] || [ -z "$CRON_TIME" ]; then
    echo "Usage: bash phase_template.sh <Phase-Folder-Name> <Phase-Number-or-Name> <HH:MM>"
    exit 1
fi

# 1️⃣ Create phase folder
PHASE_FOLDER="$HOME/$PHASE_NAME"
mkdir -p "$PHASE_FOLDER"
echo "✅ Phase folder: $PHASE_FOLDER"

# 2️⃣ Create setup script
SETUP_SCRIPT="$PHASE_FOLDER/setup_$PHASE_NUMBER.sh"
if [ ! -f "$SETUP_SCRIPT" ]; then
    touch "$SETUP_SCRIPT"
    chmod +x "$SETUP_SCRIPT"
    echo "✅ Setup script: $SETUP_SCRIPT"
else
    echo "ℹ️ Setup script already exists: $SETUP_SCRIPT"
fi

# 3️⃣ Create logs folder
LOGS_FOLDER="$PHASE_FOLDER/Logs"
mkdir -p "$LOGS_FOLDER"
DAILY_LOG="$LOGS_FOLDER/daily_$PHASE_NUMBER.md"
touch "$DAILY_LOG"
echo "✅ Logs folder: $LOGS_FOLDER"
echo "✅ Daily log file: $DAILY_LOG"

# 4️⃣ Add cron job for daily execution
# Replace:
CRON_CMD="$CRON_TIME * * * bash $SETUP_SCRIPT >> $DAILY_LOG 2>&1"
# With this:
HOUR=$(echo $CRON_TIME | cut -d: -f1)
MINUTE=$(echo $CRON_TIME | cut -d: -f2)
CRON_CMD="$MINUTE $HOUR * * * bash $SETUP_SCRIPT >> $DAILY_LOG 2>&1"
# Remove any previous cron for this script
crontab -l | grep -v "$SETUP_SCRIPT" 2>/dev/null | crontab -
# Add new cron
(crontab -l 2>/dev/null; echo "$CRON_CMD") | crontab -
echo "✅ Cron job scheduled: $CRON_CMD"

# 5️⃣ Reminder to edit setup script
echo "✅ Phase template ready. Edit your setup script:"
echo "nano $SETUP_SCRIPT"
