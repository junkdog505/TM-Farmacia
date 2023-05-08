# UCSM Farm
Esta aplicación es el de una farmacia en el cual se le permite realizar las compras al usuario en las distintas sucursales de la empresa.
## Recursos Usados
### PHP
Se utilizó PHP para el lado de hacer consultas a la base de datos
```
sudo dnf install php php-cli php-common php-mysqlnd 
```
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
pip install flask
pip install flask-mysqldb
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