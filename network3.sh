#!/bin/bash
# Display social details and channel information
echo "==================================="
echo "           CryptonodeHindi       "
echo "==================================="
echo "Telegram: https://t.me/cryptonodehindi"
echo "Twitter: @CryptonodeHindi"
echo "YouTube: https://www.youtube.com/@CryptonodeHindi"
echo "Medium: https://medium.com/@cryptonodehindi"
echo "==================================="

# Update the package list and install necessary packages
sudo apt update
sudo apt install -y net-tools

# Download the specified tar file
wget https://network3.io/ubuntu-node-v2.1.1.tar.gz

# Check if the tar file was downloaded successfully
if [ -f "ubuntu-node-v2.1.1.tar.gz" ]; then
    # Extract the contents of the tar file
    tar -xvf ubuntu-node-v2.1.1.tar.gz
else
    echo "Error: Tar file not found!"
    exit 1
fi

# Remove the tar file after extraction
rm -f ubuntu-node-v2.1.1.tar.gz  # Corrected the file name to match the downloaded tar file (.tar.gz)

# Add the rule for 8080 port (this might already exist, but it's safe to run)
sudo ufw allow 8080

# Thank you message
echo "==================================="
echo "    Thanks for using this script!"
echo "==================================="
echo "Please follow my social links:"
echo "Twitter: @CryptonodeHindi"
echo "YouTube: https://www.youtube.com/@CryptonodeHindi"
echo "Medium: https://medium.com/@cryptonodehindi"
echo "Join our Telegram for any support: https://t.me/cryptonodehindi"
echo "======================================================================"
