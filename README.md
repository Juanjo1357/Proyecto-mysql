 
# Proyecto-MySQL
### Indice
* [Introducción](#introducción)
* [Instalación MySQL](#instalación)
* [Contraseñas root](#contraseñas)
* [Creación de usuarios](#usuarios)
* [Diseño de la base de datos](#diseño)
* [Tablas](#tablas)
* [Conexión en DataGrip](#conexión)
* [Conclusiones](#conclusiones)
## Introducción
En este proyecto se creará una base de datos relacional sobre el **Mundial de Natación de Budapest de 2022**.

Para ello, en primer lugar se ha instalado **MySQL** y se ha conectado con **DataGrip**, ya que es desde donde se creará la base de datos.

Se ha instalado también **Git**, para poder controlar las versiones del proyecto, ya que se realizará en grupo y en remoto.

Por último, se ha realizado una conexión entre Git y MySQL con DataGrip, y DataGrip se ha conectado a su vez con **GitHub**.

Los tres integrantes del proyecto tenemos acceso al repositorio en línea de GitHub para poder actualizar los datos del proyecto, compartirlos y tener un control de las versiones.
 
## Instalación
En primer lugar se elegirá el tipo de inicio, en nuestro caso será la primera opción "Developer Default", para instalar todos los productos necesarios para *MySQL*.
![Instalacion1][img1]

[img1]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion01.png "Instalacion1"
En segundo lugar, se elegirá dónde instalar el workbench, que es la herramienta más visual de MySQL.
![Instalacion2][img2]

[img2]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion02.png "Instalacion2"
La instalación dá un aviso de que dos productos tienen fallos en los requisitos que no se pueden arreglar automáticamente, sino que se tiene que hacer manual. En este caso no es importante ya que son complementos para Phyton y Visual Studio Code, que no se van a usar para este proyecto.
![Instalacion3][img3]

[img3]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion03.png "Instalacion3"
En esta imágen se visualiza lo que está listo para instalarse, le damos a "Execute" para que empiece la instalación.
![Instalacion4][img4]

[img4]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion04.png "Instalacion4"
Aquí veremos los productos que están preparados para ser configurados.
![Instalacion5][img5]

[img5]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion05.png "Instalacion5"
Luego configuramos los puertos y la conectividad.
![Instalacion6][img6]

[img6]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion06.png "Instalacion6"
Aquí se podrá escoger entre dos métodos de autentificación, marcamos la que usa una contraseña fuerte y encriptada.
![Instalacion7][img7]

[img7]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion07.png "Instalacion7"
Luego crearemos la contraseña de Root y las cuentas de Usuario de los integrantes del grupo.
![Instalacion8][img8]

[img8]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion08.png "Instalacion8"
Configuraremos los Servicios de Windows.
![Instalacion9][img9]

[img9]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion09.png "Instalacion9"
Le concedemos los permisos al archivo.
![Instalacion10][img10]

[img10]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion10.png "Instalacion10"
Activacion de los logs.
![Instalacion11][img11]

[img11]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion11.png "Instalacion11"
Ahora entramos en las opciones avanzadas.
![Instalacion12][img12]

[img12]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion12.png "Instalacion12"
Momento de aplicar la configuración.
![Instalacion13][img13]

[img13]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion13.png "Instalacion13"
En este paso no hará falta modificar nada ya que todo se ejecuta en local y no necesitamos intermediarios.
![Instalacion14][img14]

[img14]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion14.png "Instalacion14"
Probamos a conectar con el servidor desde el usuario root para comprobar que la conexión es correcta y aparece el mensaje de éxito..
![Instalacion15][img15]

[img15]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion15.png "Instalacion15"
Volvemos a aplicar la configuración.
![Instalacion16][img16]

[img16]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion16.png "Instalacion16"
Y por último, ya estaría la instalación completada.
![Instalacion17][img17]

[img17]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion17.png "Instalacion17"


### Contraseñas
En el momento de crear la contraseña para el usuario Root, también se han creado los perfiles de los integrantes del grupo y sus contraseñas:
- Root:           12345
- JoseM:          1234
- Teresa:         1234
- Juanjo1357:     1234

![CreacionRoot18][img18]

[img18]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Contrasenaroot.png "ContraseñaRoot"

### Usuarios
Los usuarios creados en el proceso de instalación coinciden con los nombres de los integrantes del grupo. En este paso se pueden añadir más, y además aparece el rol que tiene cada uno.

![CreacionUsuarios19][img19]

[img19]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Usuarios.png "Creacion Usuarios"

## Diseño
En primer lugar, para diseñar la base de datos, se analizó detenidamente [la página web con todos los datos de la competición](https://en.wikipedia.org/wiki/2022_World_Aquatics_Championships).

A partir de eso, se empezaron a escoger los datos más relevantes, y a base de esquemas hechos a mano se fueron creando tablas sin tener en cuenta restricciones ni relaciones.

Una vez divididos los datos en tablas, se empiezan a diseñar las tablas con Adobe Illustrator, y es cuando se empiezan a tener en cuenta las restricciones.

Hechas las tablas y sus restricciones, se finalizan las relaciones, que permiten eliminar tablas y metadatos redundantes.

![DiseñoBD20][img20]

[img20]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/tablasgbd.jpg "DiseñoBD20"

### Tablas
Las tres tablas creadas más importantes han sido **la de Competidores, la de Clasificación Individual y la de Clasificación Grupal**.

Para crear estas tablas, han sido necesarios muchos datos que se relacionan con otras tablas como la de los Países, Estilos de nado, Categorías, Medallas...


#### Países
En esta tabla se incluyen todos los países ganadores de una medalla como mínimo.

#### Categorías
#### Medallas
#### Estilos de nado
#### Competidores
#### Equipos
#### Clasificación Individual
#### Clasificación Grupal
#### Récords

### Relaciones entre tablas

## Conexión
Pantallazo de la conexión de datagrip con la base de datos

En primer lugar, para establecer conexión con la base de datos MySQL nos tendremos que dirigir al apartado de **Database Explorer**, que se encuentra arriba a la izquierda y nos saldrá el simbolito de un **más**, le clickaremos y se nos despliega un menú, el cual le daremos a **Data Source** y se nos abre otro menú al cual daremos a **MySQL**.
![ConexionMySQL21][img21]

[img21]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/ConexionMySQL.png "ConexionMySQL"
Después, nos saldrá una ventanita el cual tendremos que ponerle un **Nombre**, cuando ya esté metido el nombre ponemos nuestro **Nombre de Usuario** y **La Contraseña** del cual nos registramos en **MySQL**.
![ConexionMySQL22][img22]

[img22]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/ConexionMySQL2.png "ConexionMySQL2"

## Conclusiones
dificultades y problemas
***Juan José:***
***Jose María:***
***Teresa:***
aspectos positivos
***Juan José:***
***Jose María:***
***Teresa:***
reflexiones finales
***Juan José:***
***Jose María:***
***Teresa:***


