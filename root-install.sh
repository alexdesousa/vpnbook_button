#!/bin/bash

PWD=$(pwd)

# Installs configuration.
#
# @param SRC Configuration name.
function install_configuration() {
    SRC=$1
    SRC_FILE=$(echo "$SRC" | tr '[:upper:]' '[:lower:]')

    wget http://www.vpnbook.com/free-openvpn-account/VPNBook.com-OpenVPN-$SRC.zip
    unzip -p VPNBook.com-OpenVPN-$SRC.zip vpnbook-$SRC_FILE-tcp443.ovpn > $PWD/vpnbook/ovpn/vpnbook-$SRC_FILE-tcp443.ovpn
    sed -i 's/auth-user-pass/auth-user-pass \/opt\/vpnbook\/config\/login.conf/g' $PWD/vpnbook/ovpn/vpnbook-$SRC_FILE-tcp443.ovpn

    rm VPNBook.com-OpenVPN-$SRC.zip
}

#Cleans configuration.
#
# @param SRC Configuration name.
function clean_configurations() {
    rm -f $PWD/vpnbook/ovpn/vpnbook-*-tcp443.ovpn
}

# Installs possible configurations of VPNBook.
function install_scripts() {
    install_configuration "Euro1"
    install_configuration "Euro2"
    install_configuration "UK1"
    install_configuration "US1"

    mkdir -p /opt/vpnbook
    cp -r $PWD/vpnbook/* /opt/vpnbook

    clean_configurations
}

#Uninstalls scripts.
function uninstall_scripts() {
    rm -rf /opt/vpnbook
}

#MAIN
case "$1" in
    install)
        install_scripts
        ;;
    uninstall)
        uninstall_scripts
        ;;
    *)
        echo "Usage: $0 {install | uninstall}"
esac
