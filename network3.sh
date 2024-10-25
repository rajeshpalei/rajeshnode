#!/bin/bash
# Update the package list and install necessary packages
sudo apt update
sudo apt install -y net-tools

# Download the specified tar file
wget https://network3.io/ubuntu-node-v2.1.0.tar

# Extract the contents of the tar file
tar -xvf ubuntu-node-v2.1.0.tar

# Remove the tar file after extraction
rm -rf ubuntu-node-v2.1.0.tar