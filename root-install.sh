#!/bin/bash

# Installs configuration.
#
# @param SRC Configuration name.
function install_configuration() {
    SRC=$1
    SRC_FILE=$(echo "$1" | tr '[:upper:]' '[:lower:]')
    wget http://www.vpnbook.com/free-openvpn-account/VPNBook.com-OpenVPN-$SRC.zip
    unzip -p VPNBook.com-OpenVPN-$SRC.zip vpnbook-$SRC_FILE-tcp443.ovpn > vpnbook/ovpn/vpnbook-$SRC_FILE-tcp443.ovpn
    sed -i 's/auth-user-pass/auth-user-pass \/opt\/vpnbook\/config\/login.conf/g' vpnbook/ovpn/vpnbook-$SRC_FILE-tcp443.ovpn
    rm VPNBook.com-OpenVPN-$SRC.zip
}

# Installs possible configurations of VPNBook.
function install_configurations() {
    install_configuration "Euro1"
    install_configuration "Euro2"
    install_configuration "UK1"
    install_configuration "US1"
    
    mkdir -p /opt/vpnbook
    cp -r vpnbook/* /opt/vpnbook
}

#MAIN
install_configurations
