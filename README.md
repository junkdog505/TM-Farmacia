# UCSM Farma
Esta aplicación es el de una farmacia en el cual se le permite realizar las compras al usuario en las distintas sucursales de la empresa.
## Recursos Usados

### Python
Se usó python la versión 3.11 en este proyecto junto con un entorno virtual llamado venv.

Para usar el Entorno virtual es necesario adherirlo con el siguiente código:

``` python
virtualenv -p python3 venv
```

Y para entrar al entorno virtual es necesario usar el siguiente comando:
``` bash
Windows: 
.\venv\bin\activate (En mi proyecto)

Pero en cualquier otro proyecto es de la siguiente manera:
.\env\Scripts\activate
==============================
Linux:
source venv/bin/activate      
```
Las librerias de pip usadas fueron:

``` python
pip install flask flask-mysqldb datetime pymysql 
pip list 
=========================
blinker        1.6.2    =
cffi           1.15.1   =
click          8.1.3    =
cryptography   40.0.2   =
DateTime       5.1      =
Flask          2.3.2    =
Flask-MySQLdb  1.0.1    =
itsdangerous   2.1.2    =   
Jinja2         3.1.2    =
MarkupSafe     2.1.2    =
mysqlclient    2.1.1    =
pip            23.1.2   =
pycparser      2.21     =
PyMySQL        1.0.3    =
pytz           2023.3   =
setuptools     65.5.1   =
Werkzeug       2.3.3    =
wheel          0.38.4   =
zope.interface 6.0      =
=========================
```
### Framework
Se usó el framework de python llamado FLASK por su fácil accesibilidad y manejo para realizar backend y front end.

Nota 
```
Si se usa linux se debe tener en cuenta la instalación de librerias de mysql y python 
en el sistema, por ello si no lo tiene instalado de acuerdo a su distribución ingrese
este código:
```
> `sudo dnf install python3-devel mysql-devel`

### Mysql
Se usó mysql como gestor de base de datos para almacenar todos los datos que se pueadn manejar de forma estructurada
se puede acceder a los datos a través de este repositorio en los archivos llamados:

| SCRIPT ESTRUCTURA                  | SCRIPT DATOS                         |
|------------------------------------|--------------------------------------|
| Script_Crear_Tablas_UCSM_Farma.sql | Script_Ingresar_Datos_UCSM_Farma.sql |

Nota
- Estos archivos se encuentra alojados en este repositorio en la carpeta Scripts.
- Ingresar sus datos correspondientes en la conexión entre Python y Mysql correctamente:
``` Python
def connect():
    return pymysql.connect(
        host='localhost', -> LocalHost (No tocar)
        password='', -> Contraseña para ingresar a su base de datos
        user='root', -> El usuario de su base de datos
        db='farmacia', -> El nombre de la base de datos
        port=3306 -> Puerto (No tocar)
    )
```

Para evitar problemas del uso de mysql se debe usar el puerto por defecto:
>   localhost:3306


## Integrantes
- Amézquita Soto, Edison Cristian
- Gordillo Saire, Alexis Andre 
- Huaman Quispe, Carlos Elisban
- Lozada Bedregal, Gianfranco
- Torres Delgado, Leonel Mauricio