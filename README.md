 
# Proyecto-MySQL
## Introducción
En este proyecto se creará una base de datos relacional sobre el **Mundial de Natación de Budapest de 2022**.

Para ello, en primer lugar se ha instalado **MySQL** y se ha conectado con **DataGrip**, ya que es desde donde se creará la base de datos.

Se ha instalado también **Git**, para poder controlar las versiones del proyecto, ya que se realizará en grupo y en remoto.

Por último, se ha realizado una conexión entre Git y MySQL con DataGrip, y DataGrip se ha conectado a su vez con **GitHub**.

Los tres integrantes del proyecto tenemos acceso al repositorio en línea de GitHub para poder actualizar los datos del proyecto, compartirlos y tener un control de las versiones.
 
## Instalación MySQL
En primer lugar elegimos el tipo de inicio, en nuestro caso elegimos la primera opción "Developer Default", para instalar todos los productos necesarios para *MySQL*.
![Instalacion1][img1]

[img1]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion01.png "Instalacion1"
En segundo lugar, elegimos donde queremos que se nos instale el workbench.
![Instalacion2][img2]

[img2]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion02.png "Instalacion2"
Luego nos saldrá para elegir entre estos requerimientos que nos sugiere MySQL Installer no nos son compatibles con DataGrip ya que uno es para Visual Studio y el otro es para Python.
![Instalacion3][img3]
En esta imágen se visualiza lo que está listo para instalarse, le damos a "Execute" para que empiece la instalación.
[img3]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion03.png "Instalacion3"

![Instalacion4][img4]
Aquí veremos los productos que están preparados para ser configurados.
[img4]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion04.png "Instalacion4"

![Instalacion5][img5]
Luego configuramos los puertos y la conectividad.
[img5]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion05.png "Instalacion5"

![Instalacion6][img6]
Aquí veremos los metodos de autentificación, el cual marcamos la de usar una contraseña fuerte y encriptada.
[img6]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion06.png "Instalacion6"

![Instalacion7][img7]
Luego crearemos la contraseña de Root y las cuentas de Usuario.
[img7]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion07.png "Instalacion7"

![Instalacion8][img8]

[img8]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion08.png "Instalacion8"

![Instalacion9][img9]

[img9]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion09.png "Instalacion9"

![Instalacion10][img10]

[img10]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion10.png "Instalacion10"

![Instalacion11][img11]

[img11]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion11.png "Instalacion11"

![Instalacion12][img12]

[img12]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion12.png "Instalacion12"

![Instalacion13][img13]

[img13]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion13.png "Instalacion13"

![Instalacion14][img14]

[img14]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion14.png "Instalacion14"

![Instalacion15][img15]

[img15]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion15.png "Instalacion15"

![Instalacion16][img16]

[img16]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion16.png "Instalacion16"

![Instalacion17][img17]

[img17]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion17.png "Instalacion17"













### Constraseñas root
- Root Password:  12345
- JoseM:          1234
- Teresa:         1234
- Juanjo1357:     1234

![Instalacion8][img8]

[img8]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/Instalacion08.png "Instalacion8"

### Creación de usuarios

## Diseño de la base de datos
En primer lugar, para diseñar la base de datos, se analizó detenidamente [la página web con todos los datos de la competición](https://en.wikipedia.org/wiki/2022_World_Aquatics_Championships).

A partir de eso, se empezaron a escoger los datos más relevantes, y a base de esquemas hechos a mano se fueron creando tablas sin tener en cuenta restricciones ni relaciones.

Una vez divididos los datos en tablas, se empiezan a diseñar las tablas con Adobe Illustrator, y es cuando se empiezan a tener en cuenta las restricciones.

Hechas las tablas y sus restricciones, se finalizan las relaciones, que permiten eliminar tablas y metadatos redundantes.

### Tablas
Las tres tablas creadas más importantes han sido **la de Competidores, la de Clasificación Individual y la de Clasificación Grupal**.

Para crear estas tablas, han sido necesarios muchos datos que se relacionan con otras tablas como la de los Países, Estilos de nado, Categprías, Medallas...


#### Países
#### Categorías
#### Medallas
#### Estilos de nado
#### Competidores
#### Equipos
#### Clasificación Individual
#### Clasificación Grupal
#### Récords

### Relaciones entre tablas

## Conexión en DataGrip
Pantallazo de la conexión de datagrip con la base de datos

## Conclusiones
dificultades y problemas
aspectos positivos
reflexiones finales


