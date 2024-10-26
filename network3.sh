#!/bin/bash
# Display social details and channel information
echo "==================================="
echo "           CryptonodeHindi       "
echo "==================================="
echo "Telegram: https://t.me/cryptonodehindi"
echo "Twitter: @CryptonodeHindi"
echo "YouTube: https://www.youtube.com/@CyptonodeHindi"
echo "Medium: https://medium.com/@cyptonodehindi"
echo "==================================="

# Update the package list and install necessary packages
sudo apt update
sudo apt install -y net-tools

# Download the specified tar file
wget https://network3.io/ubuntu-node-v2.1.0.tar

# Extract the contents of the tar file
tar -xvf ubuntu-node-v2.1.0.tar

# Remove the tar file after extraction
rm -rf ubuntu-node-v2.1.0.tar

# Thank you message
echo "==================================="
echo "    Thanks for using this script!"
echo "==================================="
echo "Please follow my social links:"
echo "Twitter: @CryptonodeHindi"
echo "YouTube: https://www.youtube.com/@CyptonodeHindi"
echo "Medium: https://medium.com/@cyptonodehindi"
echo "Join our Telegram for any support: https://t.me/your_telegram_link"
echo "======================================================================"