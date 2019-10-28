#!/bin/bash

set -eux

mkdir /tmp/vpn
cd /tmp/vpn
wget https://adaptive-it-provisioning-ca.s3.ca-central-1.amazonaws.com/Fortigate/forticlient-sslvpn_4.4.2333-1_amd64.deb
sudo dpkg -i forticlient-sslvpn_4.4.2333-1_amd64.deb
rm -rf /tmp/vpn
