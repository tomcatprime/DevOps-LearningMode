#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2133_moso_interior.zip"
ART_NAME="2133_moso_interior"
TEMPDIR="/tmp/webfiles"
IP=$(ip addr show enp0s8 | grep inet | awk '{print $3}' | cut -d/ -f1 )

# Step 1: Install httpd package
echo "Installing httpd..."
sudo yum install -y $PACKAGE > /dev/null

# Step 2: Start and enable httpd service
echo "Starting and enabling httpd service..."
sudo systemctl start $SVC
sudo systemctl enable $SVC

# Step 3: Download a template from tooplate.com
echo "Downloading template from tooplate.com..."
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $URL > /dev/null

# Step 4: Unzip the template and deploy to /var/www/html
echo "Deploying template to ..."
sudo unzip -qo $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/

# Step 5: Restart httpd service
echo "Restarting httpd service..."
sudo systemctl restart $SVC
