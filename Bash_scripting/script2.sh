#!/bin/bash
MTU_COUNT=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $MTU_COUNT -eq 1 ]
then 
    echo "1 Active Network Interface found"
elif [ $MTU_COUNT -gt 1 ]
then
    echo "Found $MTU_COUNT Active Network Interfaces"
else
    echo "No Active Network Interfaces found"
fi
date