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

---

# Botón VPN Book
### Un "botón" para tu escritorio GNU/Linux para iniciar, detener y reiniciar OpenVPN, usando las redes de VPN Book.

---

*Última actualización: 4 de abril de 2014*

Actualmente, VPN Book ofrece un servicio gratuito de VPN (Red Privada Virtual) para diferentes propósitos. Como dicen en su **[página] (http://www.vpnbook.com/)**:

* **Euro VPN**: "Nuestros servidores VPN europeos están hospedados en Rumania que es uno de los mejores sitios para la privacidad. Nuestras VPN europeas permiten sobrepasar la censura impuesta por proveedores de servicio de internet (ISP) y obtener acceso sin restricciones a internet".

* **US & UK VPN**: "Nuestros servidores de EEUU y Reino Unido permiten ver programación como la de Hulu o Netflix y páginas web con acceso restringido por país.".

Prerrequisitos
-------------

El script *vpnbook_button* requiere los siguientes paquetes:

* Git: control de versiones distribuido.
* Zenity: muestra diálogos gráficos desde la *shell*.
* OpenVPN: demonio para conectarse a una red privada virtual.

En *GNU/Linux Debian Jessie*, están en los repositorios:

* Instalación con *su*:

        alex@arya:~$ su -
        alex@arya:~# aptitude install zenity openvpn git

* Instalación con *sudo*:

        alex@arya:~$ sudo apt-get install zenity openvpn git

También pueden ser instalados por el *administrador de paquetes Synaptic*.

Instalación
-----------

1. Descarga el código fuente del proyecto:

        alex@arya:~$ git clone https://github.com/alexdesousa/vpnbook_button.git
        
2. Esto creará la carpeta *vpnbook_button* en tu carpeta *home*. Abre la carpeta
y haz doble clic en el script *install.sh*. Se creará un acceso directo en tu
carpeta *Escritorio*.

3. Para creat un lanzador de la aplicación en el panel (como los paneles de MATE),
sólo arrastra el acceso directo en tu carpeta *Escritorio* y suéltala en el panel
de tu preferencia. Para otros entornos de escritorio, lee sus manuales.

Uso
---

El botón tiene dos funciones:

1. Cuando OpenVPN esté inactivo, pedirá elegir un servidor VPN de la lista.

2. Cuando OpenVPN esté activo, pedirá elegir entre detener o reiniciar el programa, usando el servidor elegido anteriormente.
