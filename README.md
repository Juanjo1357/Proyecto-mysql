 
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


### Tablas
Las tres tablas creadas más importantes han sido **la de Competidores, la de Clasificación Individual y la de Clasificación Grupal**.

Para crear estas tablas, han sido necesarios muchos datos que se relacionan con otras tablas como la de los Países, Estilos de nado, Categorías, Medallas...


#### Países
En esta tabla se incluyen todos los países ganadores de una medalla como mínimo.
La tabla contiene un identificador del país y el nombre del mismo.


![TablaPaises][img200]

[img200]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Paises.png "TablaPaises"
#### Categorías
En esta tabla se dividirán las participaciones masculinas y femeninas, se tendrá en cuenta para identificar a los competidores y poder hacer consultas en base al género por el que compiten.


![TablaCategorias][img201]

[img201]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Categorias.png "TablaCategorias"
#### Medallas
En esta tabla se asociará un id_medalla a cada una de las tres posibles (oro, bronce y plata), también se trata de un dato para poder hacer consultas, como la tabla de medallas totales por país.


![TablaMedallas][img202]

[img202]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Medallas.png "TablaMedallas"
#### Estilos de nado
En esta tabla se identificarán los diferentes estilos de nado con sus determinadas distancias, se ha escogido que cada distancia determine un nuevo estilo de nado, es decir el estilo freestyle se identificará con distintos id_estilo según la distancia (100m,200m,400m...)

![TablaEstilos_nado][img203]

[img203]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Estilos_nado.png "TablaEstilos_nado"
#### Competidores
Esta es una de las tablas que más información contiene, identificará al competidor con un número, que contendrá los datos de su nombre, apellido, país y categoría en la que compite. 


![TablaCompetidores][img204]

[img204]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Competidores.png "TablaCompetidores"
#### Equipos
En esta tabla se identificarán los equipos que compiten en los relevos, cada competidor puede estar en distintos equipos, y pueden ser mixtos, es por eso que tanto el id_equipo como el id_competidor deben ser Primary Key. 


![TablaEquipos][img205]

[img205]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Equipos.png "TablaEquipos"
#### Clasificación Individual
Otra de las tablas que más información y relaciones contiene, en este caso se trata de las participaciones individuales por lo que es necesario identificar a cada competidor, el estilo con el que participa y la medalla que ha conseguido, todos estos datos son referencias a otras tablas, exceptuando el del tiempo.


![TablaClasificacion_individual][img206]

[img206]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Clasificacion_individual.png "TablaClasificacion_individual"
#### Clasificación Grupal
Esta tabla se parece mucho a la anterior, pero la diferencia está en que, al ser grupal, se identifica al equipo y no al competidor. Y como diferencia, se ha optado por tener en cuenta el tiempo total del equipo, ya que es al que se está identificando en la tabla, en vez del tiempo individual.


![TablaClasificacion_grupal][img207]

[img207]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Clasificacion_grupal.png "TablaClasificacion_grupal"
#### Récords
Esta tabla incluye los récords batidos durante la competición, algunos individuales, otros en grupo y algunos en los que únicamente se identifica al país. Algunos incluso no tienen fecha. Es por eso que en esta tabla puede ser nulo el competidor y la fecha. 


![TablaRecords][img208]

[img208]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/Tablas%20individuales/Records.png "TablaRecords"

### Relaciones entre tablas
Una de las partes más complicadas, teniendo en cuenta que las tablas de clasificación individual y grupal son prácticamente iguales. 

Como hemos explicado en los anteriores puntos, las tres principales tablas son las de clasificaciones y récords, que son las que más referencias a otras tablas tienen.


![DiseñoBD20][img20]

[img20]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/tablasgbd.jpg "DiseñoBD20"

## Conexión


En primer lugar, para establecer conexión con la base de datos MySQL nos tendremos que dirigir al apartado de **Database Explorer**, que se encuentra arriba a la izquierda y nos saldrá el simbolito de un **más**, le clickaremos y se nos despliega un menú, el cual le daremos a **Data Source** y se nos abre otro menú al cual daremos a **MySQL**.
![ConexionMySQL21][img21]

[img21]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/ConexionMySQL.png "ConexionMySQL"
Después, nos saldrá una ventanita el cual tendremos que ponerle un **Nombre**, cuando ya esté metido el nombre ponemos nuestro **Nombre de Usuario** y **La Contraseña** del cual nos registramos en **MySQL**. 


![ConexionMySQL22][img22]

[img22]: https://github.com/Juanjo1357/Proyecto-mysql/blob/main/ProcesoInstalacion/ConexionMySQL2.png "ConexionMySQL2"

Antes de iniciar sesión con el usuario personal, el root debe haber concedido los permisos a ese usuario para gestionar la Base de Datos en concreto. 
Esto se hace a través del comando GRANT. 

## Conclusiones
Ya que la mayor parte del proyecto la hemos trabajado en remoto, hemos decidido dividir las conclusiones en puntos en los que cada uno aportará sus ideas.

Tendremos en cuenta las dificultades, las partes más positivas y una reflexión final.
### Dificultades y problemas
- ***Juan José***: Tuve algún problema a la hora de conectarme remotamente, ya qué me daba un error un poco extraño.
- ***Jose María***: A la hora de hacer los commits y el push tenia un problema que creaba un segundo commit con el nombre de Merge remote-tracking branch 'origin/main' y no sabia por que ocurria 
- ***Teresa***: 
  - Al principio del proyecto tuve muchos problemas para **conectar DataGrip con GitHub**, por lo que los días que trabajamos en clase nos dedicamos principalmente a crear las tablas. 
  - Al trabajar desde MacOS, la instalación de MySQL y Git ha sido **a través de comandos**, por lo que no he tenido una interfaz gráfica a través de la que crear usuarios y gestionar permisos.
  - Otra de las dificultades ha sido aplicar el **lenguaje MySQL**, ya que tenía muy por la mano el de Oracle y hay algunas cosas que cambian (sobretodo el tema de NUMBER=INT, o la sintaxis de las CONSTRAINT y el NOT NULL).
  - Al crear las tablas todo parecía perfecto, pero en el momento de **insertar datos** me di cuenta de algunos fallos y tuve que corregirlos, y al haber referencias fue complicado.
### Aspectos positivos
- ***Juan José***: Aprendimos a trabajar en grupo y de forma remota.
- ***Jose María***: Poder a empezar a trabajar en un proyecto en comun con otros dos compañeros y poder hacer un trabajo remotamente, a la vez que poder retroceder a una version anterior del trabajo es muy util por posibles errores.
- ***Teresa***: Me ha parecido un proyecto muy interesante, trabajar en grupo ha sido todo un reto, y hacerlo de forma remota lo ha sido el doble. He aprendido a usar el lenguaje de MySQL y he crado una base de datos desde cero, corrigiendo y probando, que me parece muy interesante.
### Reflexiones finales
- ***Juan José***: Me parece una manera muy eficaz a la hora de hacer esta práctica, ya que aprendimos a base de buscar la información. Tambien recalcar el trabajar en grupo y en remoto ya que es muy importante el saberte conectar remotamente, tambien los comandos utilizados como el Git pull, el Git commit, etc.
- ***Jose María***: Es una buena manera de hacer trabajos con diferentes puntos de vistas es interesante porque al poder comparar diferentes ideas con los compañeros ves los errores y aciertos que probablemente solo no verias .
- ***Teresa***: Al empezar el proyecto pensé que no nos daría tiempo a terminarlo, ya que se veía algo muy extenso y complicado, y teniendo en cuenta que trabajabamos en remoto era complicado contactar a la vez todos. Pero el resultado del trabajo ha sido bastante satisfactorio.



