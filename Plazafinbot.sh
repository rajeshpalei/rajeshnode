#!/bin/bash

# Define color codes
INFO='\033[0;36m'  # Cyan
BANNER='\033[0;35m' # Magenta
YELLOW='\033[0;33m' # Yellow
RED='\033[0;31m'    # Red
GREEN='\033[0;32m'  # Green
BLUE='\033[0;34m'   # Blue
CYAN='\033[0;36m'   # Cyan
NC='\033[0m'        # No Color

# Display social details and channel information
echo "========================================"
echo -e "${YELLOW} Script is made by CRYPTONODEHINDI${NC}"
echo -e "-------------------------------------"

# Large ASCII Text with BANNER color
echo -e "${BANNER}  CCCCC  RRRRR   Y   Y  PPPP   TTTTT  OOO      N   N   OOO   DDDD  EEEEE      H   H  III  N   N  DDDD   III${NC}"
echo -e "${BANNER} C       R   R    Y Y   P  P     T   O   O     NN  N  O   O  D   D E          H   H   I   NN  N  D   D   I ${NC}"
echo -e "${BANNER} C       RRRRR     Y    PPPP     T   O   O     N N N  O   O  D   D EEEE       HHHHH   I   N N N  D   D   I ${NC}"
echo -e "${BANNER} C       R   R     Y    P        T   O   O     N  NN  O   O  D   D E          H   H   I   N  NN  D   D   I ${NC}"
echo -e "${BANNER}  CCCCC  R    R    Y    P        T    OOO      N   N   OOO   DDDD  EEEEE      H   H  III  N   N  DDDD   III${NC}"

echo "============================================"

# Use different colors for each link
echo -e "${YELLOW}Telegram: ${GREEN}https://t.me/cryptonodehindi${NC}"
echo -e "${YELLOW}Twitter: ${GREEN}@CryptonodeHindi${NC}"
echo -e "${YELLOW}YouTube: ${GREEN}https://www.youtube.com/@CryptonodesHindi${NC}"
echo -e "${YELLOW}Medium: ${CYAN}https://medium.com/@cryptonodehindi${NC}"

echo "============================================="

# Update and upgrade the system
apt update -y && apt upgrade -y

# Check and install required tools
for tool in curl git screen; do
    if ! command -v $tool &> /dev/null; then
        echo -e "${INFO}$tool is not installed. Installing...${NC}"
        apt install -y $tool
    else
        echo -e "${INFO}$tool is already installed.${NC}"
    fi
done

# Install NPM
apt install npm -y

# Install NVM (Node Version Manager)
echo -e "${INFO}Installing NVM (Node Version Manager)...${NC}"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Source the shell configuration file to load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js using NVM
nvm install node
nvm install 20
nvm use 20

# Verify Node.js version
echo -e "${INFO}Node.js version: $(node -v)${NC}"

# Check if the directory is present
if [ -d "CNH-PlazafinanceBot" ]; then
    echo -e "${INFO}Directory CNH-PlazafinanceBot found. Processing...${NC}"
    # Copy the file
    cp CNH-PlazafinanceBot/wallets.json /root/
    # Remove the directory
    rm -rf CNH-PlazafinanceBot
else
    echo -e "${YELLOW}Directory CNH-PlazafinanceBot not found. Skipping...${NC}"
fi

# Clone the repository
echo -e "${INFO}Cloning the CryptonodeHindi repository...${NC}"
git clone https://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@github.com/CryptonodesHindi/CNH-PlazafinanceBot.git


# Install project dependencies
echo -e "${INFO}Installing project dependencies...${NC}"
npm install ethers || { 
    echo -e "${RED}Failed to install ethers dependencies.${NC}"
    exit 1
}

npm install axios || { 
    echo -e "${RED}Failed to install axios dependencies.${NC}"
    exit 1
}

# Display thank you message
echo "==================================="
echo -e "${BANNER}           CryptonodeHindi       ${NC}"
echo "==================================="
echo -e "${GREEN}    Thanks for using this script!${NC}"
echo "==================================="
