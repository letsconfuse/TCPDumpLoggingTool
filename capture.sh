#!/bin/bash

# ============================================
# TCPDump Logger - Safe & Ethical Capture Tool
# ============================================

# WARNING:
# This script captures network traffic using tcpdump.
# Use ONLY on networks you own or have explicit permission to monitor.
# Unauthorized use may be ILLEGAL under your local cybercrime laws.

# Create logs directory if it doesn't exist
mkdir -p logs

# Set timestamp for the log file
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="logs/tcpdump_log_$TIMESTAMP.txt"

# Set default interface (can be overridden below)
INTERFACE="eth0"

# Detect default interface if eth0 not found
if ! ip link show "$INTERFACE" > /dev/null 2>&1; then
  echo "Interface $INTERFACE not found. Trying to auto-detect..."
  INTERFACE=$(ip route get 8.8.8.8 | awk '{print $5; exit}')
  echo "Using detected interface: $INTERFACE"
fi

# Optional: Set packet limit and duration
PACKET_COUNT=100
DURATION_SECONDS=60

# Log session start
echo "Capture started at $(date)" >> logs/session_activity.log
echo "Capturing on interface: $INTERFACE" >> logs/session_activity.log
echo "Saving to: $LOG_FILE" >> logs/session_activity.log

# Start capturing packets
sudo timeout $DURATION_SECONDS tcpdump -i "$INTERFACE" -n -tttt -c $PACKET_COUNT > "$LOG_FILE"

# Log session end
echo "Capture ended at $(date)" >> logs/session_activity.log
echo "----------------------------------------" >> logs/session_activity.log

# Optional cleanup: remove old logs (older than 7 days)
find logs/ -type f -name "*.txt" -mtime +7 -exec rm {} \;
