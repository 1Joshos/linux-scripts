#!/bin/bash
# Simple system info script

echo "===== System Information ====="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "OS: $(lsb_release -d | cut -f2)"
echo "Kernel: $(uname -r)"
echo "CPU: $(lscpu | grep 'Model name' | cut -d ':' -f2 | xargs)"
echo "Memory: $(free -h --si | awk '/Mem:/ {print $3 \"/\" $2}')"
echo "Disk: $(df -h / | awk 'NR==2 {print $3 \"/\" $2}')"

