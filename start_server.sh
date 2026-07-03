#!/bin/bash
# 1. Jump to target workspace directory
cd /home/ubuntu/app

# 2. Make sure the host has its package repositories up to date
sudo apt update -y

# 3. Ensure Pip is present on the machine
sudo apt install python3-pip -y

# 4. Wipe out any active processes competing for Web Port 80
sudo kill -9 $(sudo lsof -t -i:80) || true

# 5. Install the updated application requirements safely
sudo pip3 install -r requirements.txt --break-system-packages

# 6. Boot the server background daemon completely detached
sudo nohup python3 app.py > /dev/null 2>&1 &