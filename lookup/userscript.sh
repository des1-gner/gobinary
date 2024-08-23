#!/bin/bash
sudo yum install git -y
git clone https://github.com/des1-gner/gobinary.git
cd gobinary/lookup
sudo chmod 777 server.ini
sudo chmod 777 ws-ec2-lookup
sudo ./ws-ec2-lookup
