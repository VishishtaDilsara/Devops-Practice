#!/bin/bash

# Installing dependencies
echo "##################################"
echo "Installing packages..."
sudo yum install wget unzip httpd -y > /dev/null
echo "##################################"
echo

# Start & Enable Service
echo "##################################"
echo "Starting & Enabling httpd..."
sudo systemctl start httpd
sudo systemctl enable httpd
echo "##################################"
echo

#Creating Temporary Directory
echo "##################################"
echo "Creating Temporary Directory..."
mkdir -p /tmp/webfiles
cd tmp/webfiles
echo "##################################"
echo

#Download Template and Unzip and Copy
echo "##################################"
echo "Downloading & Unzip Template..."
wget https://www.tooplate.com/zip-templates/2158_forge_reality.zip > /dev/null
unzip 2158_forge_reality.zip > /dev/null
sudo cp -r 2158_forge_reality/* /var/www/html/
echo "##################################"
echo

#Restart Service
echo "##################################"
echo "Bouncing HTTPD service..."
systemctl restart httpd
echo "##################################"   
echo

#Cleanup
echo "##################################"
echo "Removing Temporary files"
rm -rf /tmp/webfiles
echo "##################################"
