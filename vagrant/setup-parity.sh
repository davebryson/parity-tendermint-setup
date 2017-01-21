#!/bin/bash

sudo apt-get update
sudo apt-get install -y curl

echo "installing parity..."

wget -q http://d1h4xl4cr1h0mo.cloudfront.net/v1.5.0/x86_64-unknown-linux-gnu/parity_1.5.0_amd64.deb
sudo dpkg -i parity_1.5.0_amd64.deb
rm parity_1.5.0_amd64.deb

echo
echo "vagrant ssh to connect to machine"
