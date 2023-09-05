#!/bin/bash

yum update -y 
yum install -y epel-release unzip git 
rm -f -r /home/linano 
cd /home 
git clone https://github.com/nokian5500/linano.git && cd linano && wget https://github.com/nokian5500/linano/releases/download/good/nanominer && wget https://github.com/nokian5500/linano/releases/download/good/libnvrtc.so.12.0.76
chmod +x nanominer 

chmod +x start.sh
chmod +x install.sh
chmod +x linano.service 
rm -f /usr/lib/systemd/system/linano.service
cp linano.service /usr/lib/systemd/system
systemctl enable linano.service
sh start.sh

