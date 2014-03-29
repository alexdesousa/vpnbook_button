# VPN Book Button
### A "button" for your GNU/Linux desktop to start, stop and restart OpenVPN using the VPN Book's networks.

---

*Last update: March 28, 2014*

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

Install
-------

To install just follow the steps below:

1. Install the script:

    * *su* install (it needs *root* user):

            alex@arya:~$ cd vpnbook_button/ 
            alex@arya:~/vpnbook_button$ su -
            alex@arya:~/vpnbook_button# ./root-install.sh install

    * *sudo* install (it needs *sudoer* user):

            alex@arya:~$ cd vpnbook_button/
            alex@arya:~/vpnbook_button# sudo ./root-install.sh install

2. Create the button. Usually involves creating a launcher for your desktop environment. I mainly use *MATE Desktop Environment* so I'll list the steps to create a launcher in the *MATE* panel.

     1. Right click the panel you want to place the button.
     2. In the context menu, select *Add to Panel* option.
     3. In the *Add to Panel* window, select the option *Custom Application Launcher* and click *Add*.
     4. In the *Create Launcher*, put the following:
         * **Type**: Application.
         * **Name**: VPNBook Button
         * **Command**: */opt/vpnbook/bin/vpnbook_button*
         * **Comment**: Starts, stops and restarts VPNBook VPN connection.
     5. Click *OK* and you're done.

3. Use the button.

    * When OpenVPN is inactive, it will ask to choose a VPN server from the list and the click OK.

    * When OpenVPN is active, it will ask to choose between stopping the program or restarting it using the server previously chosen.

---

# Botón VPN Book
### Un "botón" para tu escritorio GNU/Linux para iniciar, detener y reiniciar OpenVPN, usando las redes de VPN Book.

---

*Última actualización: 28 de marzo de 2014*

Actualmente, VPN Book ofrece un servicio gratuito de VPN (Red Privada Virtual) para diferentes propósitos. Como dicen en su **[página] (http://www.vpnbook.com/)**:

* **Euro VPN**: "Nuestros servidores VPN europeos están hospedados en Rumania que es uno de los mejores sitios para la privacidad. Nuestras VPN europeas permiten sobrepasar la censura impuesta por proveedores de servicio de internet (ISP) y obtener acceso sin restricciones a internet".

* **US & UK VPN**: "Nuestros servidores de EEUU y Reino Unido permiten ver programación como la de Hulu o Netflix y páginas web con acceso restringido por país.".

Prerequisitos
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

Install
-------

Para instalar, sólo sigue los pasos mostrados abajo:

1. Instalar el script:

    * Instalación con *su* (necesita usuario *root*):

            alex@arya:~$ cd vpnbook_button/ 
            alex@arya:~/vpnbook_button$ su -
            alex@arya:~/vpnbook_button# ./root-install.sh install

    * Instalación con *sudo* (necesita usuario *sudoer*):

            alex@arya:~$ cd vpnbook_button/
            alex@arya:~/vpnbook_button# sudo ./root-install.sh install

2. Crear el botón. Usualmente involucra crear un lanzador para tu ambiente de escritorio. Principalmente, uso *MATE Desktop Environment*, así que listaré los pasos para crear un lanzador en el panel de *MATE* (las opciones fueron traducidas por mí y tal vez no aparezcan igual en escritorios en español):

     1. Haga clic derecho en el panel donde quiera colocar el botón.
     2. En el menú de contexto, seleccione la opción *Agregar al Panel*.
     3. En la ventana *Agregar al Panel, seleccione la opción *Lanzador de aplicación personalizado* y selecciones *Agregar*.
     4. En la ventana de *Creación de Lanzador*, coloque lo siguiente:
         * **Tipo**: Aplicación.
         * **Nombre**: Botón VPNBook
         * **Comando**: */opt/vpnbook/bin/vpnbook_button*
         * **Comentario**: Inicia, detiene y reinicia una conexión con las VPN de VPNBook.
     5. Haga clic en *OK* y listo.

3. Usar el botón.

    * Cuando OpenVPN esté inactivo, pedirá elegir un servidor VPN de la lista.

    * Cuando OpenVPN esté activo, pedirá elegir entre detener o reiniciar el programa, usando el servidor elegido anteriormente.
