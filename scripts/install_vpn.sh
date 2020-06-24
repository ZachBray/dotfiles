#!/bin/bash

set -eux

mkdir /tmp/vpn
cd /tmp/vpn
yay -S debtap
sudo debtap -u
wget https://adaptive-it-provisioning-ca.s3.ca-central-1.amazonaws.com/Fortigate/forticlient-sslvpn_4.4.2333-1_amd64.deb
debtap -q forticlient-sslvpn_4.4.2333-1_amd64.deb
sudo pacman -U forticlient-sslvpn-4.4.2333-1-x86_64.pkg.tar.zst
rm -rf /tmp/vpn
