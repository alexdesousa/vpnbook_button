Idiomas de Documentación
------------------------

* [English (Default)](README.md)
* [Español](README.es.md)

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
