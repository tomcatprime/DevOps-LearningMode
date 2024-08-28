#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "###############################"
echo "Uptime: $(uptime)"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=$(uptime | awk '{print $10}')
ROOTFREE=$(df -l | grep '/dev/nvme0n1p3' | awk '{print $4}')

echo "E##############################"
echo "Free RAM: $FREERAM MB"
echo "E##############################"
echo "Current Average Load: $LOAD"
echo "##############################"
echo "Free Root Partition Size: $ROOTFREE MB"

