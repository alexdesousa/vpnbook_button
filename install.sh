#!/bin/bash

PWD=$(pwd)
DESKTOP=$(xdg-user-dir DESKTOP)

# Installs configuration.
#
# @param SRC Configuration name.
function install_configuration() {
    SRC=$1
    PERCENTAGE=$2

    SRC_FILE=$(echo "$SRC" | tr '[:upper:]' '[:lower:]')

    wget http://www.vpnbook.com/free-openvpn-account/VPNBook.com-OpenVPN-$SRC.zip
    SUM=$(($? + 0))
    unzip -p VPNBook.com-OpenVPN-$SRC.zip vpnbook-$SRC_FILE-tcp443.ovpn > $PWD/vpnbook/ovpn/vpnbook-$SRC_FILE-tcp443.ovpn
    SUM=$(($SUM + $?))
    sed -i 's/auth-user-pass/auth-user-pass \/opt\/vpnbook\/config\/login.conf/g' $PWD/vpnbook/ovpn/vpnbook-$SRC_FILE-tcp443.ovpn
    SUM=$(($SUM + $?))
    rm VPNBook.com-OpenVPN-$SRC.zip
    SUM=$(($SUM + $?))

    echo "$PERCENTAGE"
    if [ $SUM -ne 0 ]; then
        echo "# [Error] Couldn't download $SRC certificate"
    else
        echo "# [OK] Downloaded $SRC certificate"
    fi
}

#Root install
function root_install() {
    PERCENTAGE=$1

    gksu $PWD/vpnbook/install/root-install.sh
    SUM=$?

    echo "$PERCENTAGE"
    if [ $SUM -ne 0 ]; then
        echo "# [Error] Cannot install in /opt/vpnbook"
        zenity --title="Installer" --error --text="Error installing as superuser."
        exit 1
    else
        echo "# [OK] Installed in /opt/vpnbook"
    fi
}

# Cleans configuration.
#
# @param PERCENTAGE Progress.
function clean_configurations() {
    PERCENTAGE=$1

    rm -f $PWD/vpnbook/ovpn/vpnbook-*-tcp443.ovpn
    SUM=$?

    echo "$PERCENTAGE"
    if [ $SUM -ne 0 ]; then
        echo "# [Error] Couldn't clean certificates"
    else
        echo "# [OK] Cleaned certificates"
    fi
}

# Creates shortcut for the user.
function create_shortcut() {
    PERCENTAGE=$1

    if [ -f $DESKTOP/vpnbook_button.desktop ]; then
        rm $DESKTOP/vpnbook_button.desktop
    fi

    cat $PWD/vpnbook/install/shortcut > $DESKTOP/vpnbook_button.desktop
    SUM=$(($? + 0))
    chmod +x $DESKTOP/vpnbook_button.desktop
    SUM=$(($SUM + $?))

    echo "$PERCENTAGE"
    if [ $SUM -ne 0 ]; then
        echo "# [Error] Cannot create shortcut"
    else
        echo "# [OK] Shortcut created in $DESKTOP"
    fi
}

# Installs possible configurations of VPNBook.
function install_scripts() {
    (
        install_configuration "Euro1" 15
        install_configuration "Euro2" 30
        install_configuration "UK1" 45
        install_configuration "US1" 60
        root_install 80
        clean_configurations 90
        create_shortcut 100
        zenity --title="Installer" --info --text="Installation complete. Enjoy."
    ) | zenity --progress --title="Installing" --text="Beginning installation" --percentage=0 --auto-close
}

#Uninstalls scripts.
function uninstall_scripts() {
    rm $DESKTOP/vpnbook_button.desktop
    gksu $PWD/vpnbook/install/root-uninstall.sh
    zenity --title="Uninstaller" --info --text="Uninstallation complete."
}

#MAIN
Result=$(zenity --width=500 --height=250 --list --title 'VPNBook Button (Un)Installer' --radiolist --text 'Choose an action:' --column '' --column '' TRUE 'install' FALSE 'uninstall')

case "$Result" in
    install)
        install_scripts
        ;;
    uninstall)
        uninstall_scripts
        ;;
    *)
        echo "Usage: $0 {install | uninstall}"
esac
