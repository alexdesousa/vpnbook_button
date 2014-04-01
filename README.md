# VPN Book Button
### A "button" for your GNU/Linux desktop to start, stop and restart OpenVPN using the VPN Book's networks.

---

*Last update: March 31, 2014*

Currently, VPN Book offers free VPN for different purposes. As they state in their **[page] (http://www.vpnbook.com/)**:

* **Euro VPN**: "Our free euro VPN servers are hosted in Romania, which is one of the best locations for privacy. Our euro VPN allows you to bypass ISP censorship and get unrestricted internet access".

* **US & UK VPN**: "Our free US & UK VPN allow you to watch programming such as Hulu and Netflix and access country restricted websites".

Prerequisites
-------------

The *vpnbook_button* script requires the following packages:

* Zenity: displays graphical dialog boxes from shell scripts.
* OpenVPN: virtual private network daemon.

In *GNU/Linux Debian Jessie* they are in the repositories:

* *su* install:

        alex@arya:~$ su -
        alex@arya:~# aptitude install zenity openvpn

* *sudo* install:

        alex@arya:~$ sudo apt-get install zenity openvpn

Also you can install them from the *Synaptic* package manager.

Install
-------

To install, just double click the *install.sh* script. To create an application
launcher in a panel, just drag the shortcut to the panel of your preference
(this works for *MATE*; for other desktop environments, check its documentation).

Usage
-----

The button has two functions:

1. When OpenVPN is inactive, it will ask to choose a VPN server from the list and the click OK.

2. When OpenVPN is active, it will ask to choose between stopping the program or restarting it using the server previously chosen.

---

# Botón VPN Book
### Un "botón" para tu escritorio GNU/Linux para iniciar, detener y reiniciar OpenVPN, usando las redes de VPN Book.

---

*Última actualización: 31 de marzo de 2014*

Actualmente, VPN Book ofrece un servicio gratuito de VPN (Red Privada Virtual) para diferentes propósitos. Como dicen en su **[página] (http://www.vpnbook.com/)**:

* **Euro VPN**: "Nuestros servidores VPN europeos están hospedados en Rumania que es uno de los mejores sitios para la privacidad. Nuestras VPN europeas permiten sobrepasar la censura impuesta por proveedores de servicio de internet (ISP) y obtener acceso sin restricciones a internet".

* **US & UK VPN**: "Nuestros servidores de EEUU y Reino Unido permiten ver programación como la de Hulu o Netflix y páginas web con acceso restringido por país.".

Prerrequisitos
-------------

El script *vpnbook_button* requiere los siguientes paquetes:

* Zenity: muestra diálogos gráficos desde la *shell*.
* OpenVPN: demonio para conectarse a una red privada virtual.

En *GNU/Linux Debian Jessie*, están en los repositorios:

* Instalación con *su*:

        alex@arya:~$ su -
        alex@arya:~# aptitude install zenity openvpn

* Instalación con *sudo*:

        alex@arya:~$ sudo apt-get install zenity openvpn

También pueden ser instalados por el *administrador de paquetes Synaptic*.

Instalación
-----------

Para instalar, sólo haz doble clic sobre el script *install.sh*. Para crear un
lanzador, arrastra el acceso directo que esta en el escritorio, hacia el panel
donde quieras el botón (functiona en *MATE*; para otros entornos de escritorio,
consulte el manual de los mismos).

Uso
---

El botón tiene dos funciones:

1. Cuando OpenVPN esté inactivo, pedirá elegir un servidor VPN de la lista.

2. Cuando OpenVPN esté activo, pedirá elegir entre detener o reiniciar el programa, usando el servidor elegido anteriormente.
