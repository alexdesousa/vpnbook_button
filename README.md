Documentation Languages
-----------------------

* [English (Default)](README.md)
* [Español](README.es.md)

# VPN Book Button
### A "button" for your GNU/Linux desktop to start, stop and restart OpenVPN using the VPN Book's networks.

---

*Last update: April 4th, 2014*

Currently, VPN Book offers free VPN for different purposes. As they state in their **[page] (http://www.vpnbook.com/)**:

* **Euro VPN**: "Our free euro VPN servers are hosted in Romania, which is one of the best locations for privacy. Our euro VPN allows you to bypass ISP censorship and get unrestricted internet access".

* **US & UK VPN**: "Our free US & UK VPN allow you to watch programming such as Hulu and Netflix and access country restricted websites".

Prerequisites
-------------

The *vpnbook_button* script requires the following packages:

* Git: distributed version control system.
* Zenity: displays graphical dialog boxes from shell scripts.
* OpenVPN: virtual private network daemon.

In *GNU/Linux Debian Jessie* they are in the repositories:

* *su* install:

        alex@arya:~$ su -
        alex@arya:~# aptitude install zenity openvpn git

* *sudo* install:

        alex@arya:~$ sudo apt-get install zenity openvpn git

Also you can install them from the *Synaptic* package manager.

Install
-------

1. Download the project's source code:

        alex@arya:~$ git clone https://github.com/alexdesousa/vpnbook_button.git
        
2. This will create the folder *vpnbook_button* in your *home* folder. Open the
folder and double click the *install.sh* script. This will create a shortcut in
your *Desktop* folder.

3. To create an application launcher in a panel (like MATE's panels), just drag
the shortcut in your *Desktop* folder and drop it on the panel of your preference.
For other desktop environments, check their documentation.

Usage
-----

The button has two functions:

1. When OpenVPN is inactive, it will ask to choose a VPN server from the list and the click OK.

2. When OpenVPN is active, it will ask to choose between stopping the program or restarting it using the server previously chosen.
