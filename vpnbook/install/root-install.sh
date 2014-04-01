#!/bin/bash

PWD=$(pwd)

mkdir -p /opt/vpnbook
cp -r $PWD/vpnbook/* /opt/vpnbook
chmod +x /opt/vpnbook/bin/vpnbook_button
chmod +x /opt/vpnbook/bin/vpnbook
rm -rf /opt/vpnbook/install
