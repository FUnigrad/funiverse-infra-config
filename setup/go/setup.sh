#!/bin/sh
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go 
sudo tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
# export PATH=$PATH:/usr/local/go/bin
rm go1.20.2.linux-amd64.tar.gz