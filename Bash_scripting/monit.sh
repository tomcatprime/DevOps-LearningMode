#!/bin/bash
echo "###################################"
date
ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then 
  echo "Httpd process is running"
else
  echo "Httpd process is NOT running"
  echo " Starting the process"
  systemctl start httpd
  if [ $? -eq 0 ]
  then
    echo "Process started successfully."
  else
    echo "Process starting failed, contact the admin"
  fi
fi
