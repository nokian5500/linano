#!/bin/bash

yum update -y 
yum install -y epel-release unzip git 
cd /home 
rm -f -r -y lin
rm -y lin.zip && wget https://github.com/nokian5500/docker-nanominer/releases/download/lin/lin.zip && unzip lin.zip -d lin 
chmod +x lin/nanominer 
cd lin
wget https://raw.githubusercontent.com/nokian5500/docker-nanominer/master/lin.service 
chmod +x lin.service 
cp -y lin.service /usr/lib/systemd/system
systemctl enable lin.service
systemctl start lin.service
./nanominer

