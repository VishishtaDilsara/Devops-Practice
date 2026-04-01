#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2158_forge_reality.zip"
ART_NAME="2158_forge_reality"
TEMPDIR="/tmp/webfiles"

# Installing dependencies
echo "##################################"
echo "Installing packages..."
sudo yum install $PACKAGE -y > /dev/null
echo "##################################"
echo

# Start & Enable Service
echo "##################################"
echo "Starting & Enabling httpd..."
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo "##################################"
echo

#Creating Temporary Directory
echo "##################################"
echo "Creating Temporary Directory..."
mkdir -p $TEMPDIR
cd $TEMPDIR
echo "##################################"
echo

#Download Template and Unzip and Copy
echo "##################################"
echo "Downloading & Unzip Template..."
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/
echo "##################################"
echo

#Restart Service
echo "##################################"
echo "Bouncing HTTPD service..."
systemctl restart $SVC
echo "##################################"   
echo

#Cleanup
echo "##################################"
echo "Removing Temporary files"
rm -rf $TEMPDIR
echo "##################################"
