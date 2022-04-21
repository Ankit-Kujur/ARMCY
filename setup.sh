#!/bin/sh

GREEN='\033[0;32m'
RED='\033[1;31m'
NC='\033[0m'

if [ "$EUID" -ne 0 ]
  then echo " "
  echo -e "${RED}[-] Please run as root${NC}"
  echo " "
  exit
else
echo -e "${GREEN}[+] Installing Dependencies for ${NC}${RED} COMSEC Framework${NC}"
echo " "
pip3 install sockets
echo " "
pip3 install scapy
echo " "
pip3 install sockets
echo " "
pip3 install scapy
echo " "
pip3 install pyautogui
echo " "
pip3 install termcolor
echo " "
cp armcy /usr/bin/armcy
chmod +x /usr/bin/armcy
mkdir /usr/bin/scripts
cp -r ./scripts/* /usr/bin/scripts/
echo -e "${GREEN}[+] COMSEC Successfully Installed.....Type (sudo armcy) in your terminal to check...${NC}"


fi

