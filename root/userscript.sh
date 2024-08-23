#!/bin/bash
sudo yum install git -y
sudo yum install memcached -y
sudo systemctl start memcached
git clone https://github.com/des1-gner/gobinary.git
cd gobinary/root
sudo chmod 777 server.ini
sudo chmod 777 ws-ec2-root
sudo ./ws-ec2-root
