#!/bin/bash
LOG_FILE="../logs/Daurenkyzy_Aiym_system_report.log"
{
  echo "=========================================="
  echo "STUDENT SYSTEM REPORT"
  echo "Student Full Name: Daurenkyzy Aiym"
  echo "Execution Date/Time: $(date '+%Y-%m-%d %H:%M:%S')"
  echo "Current User: $(whoami)"
  echo "------------------------------------------"
  echo "OS & Kernel Version:"
  uname -a
  cat /etc/os-release | grep "PRETTY_NAME"
  echo "------------------------------------------"
  echo "CPU Information:"
  lscpu | grep -E "Model name|CPU\(s\):|Thread\(s\) per core"
  echo "------------------------------------------"
  echo "Memory Information:"
  free -h
  echo "------------------------------------------"
  echo "Disk Usage:"
  df -h /
  echo "------------------------------------------"
  echo "Available Disk Space on Root:"
  df -h / | awk 'NR==2 {print $4}'
  echo "=========================================="
} | tee -a "$LOG_FILE"
