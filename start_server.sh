#!/bin/bash
cd /home/ubuntu/app

# Gracefully clear out any legacy process hooks occupying your public web Port 80
sudo kill -9 $(sudo lsof -t -i:80) || true

# Synchronize virtual package layers
pip install -r requirements.txt

# Fire up your live application decoupled completely from active shell instances
sudo nohup python3 app.py > /dev/null 2>&1 &