Archivo Readme.txt – Proyecto EduStream
Grupo #3

Estudiantes: 
Oscar Andrey Solano
Kendal Josue Vasquez
Eder Solano
Yojan Stward Santana
Jhonnson Valerio Fallas

¿Qué hace el proyecto?

EduStream es una plataforma web donde los usuarios pueden registrarse, iniciar sesión y gestionar cursos. Los profesores pueden crear, editar y eliminar cursos, mientras que los estudiantes pueden matricularse o retirarse de ellos. 

Las funciones mas especificamente son:

Registro de usuarios
Inicio de sesión
Gestión de cursos (crear, editar, eliminar)
Inscripción de estudiantes en cursos
Cancelación de matrícula
Edición de perfil
Control de acceso según rol (Profesor / Estudiante)
Cierre de sesión


¿Por qué es útil?

Este proyecto es útil porque simula una plataforma educativa real, donde se puede organizar la información de cursos y estudiantes de manera digital. También nos permitió aplicar lo aprendido en clase, como programación orientada a objetos, conexión a bases de datos y desarrollo web en Java.

¿Cómo empezar a usar el proyecto?

Para usar el proyecto, primero hay que tener instalado Java, MySQL y un servidor como GlassFish. Luego se importa la base de datos con el archivo SQL, se configura la conexión en el proyecto y se ejecuta desde NetBeans. Una vez iniciado, se puede ingresar con los usuarios de prueba.

Los requisites del Sistema para que funcione son:

Java JDK (versión 8 o superior)
Apache NetBeans
Servidor GlassFish
MySQL Server
MySQL Workbench (Opcional)


Configuración de la Base de Datos

Abrir MySQL
Ejecutar el script: edustream_db.sql
Verificar tablas con:
	SELECT * FROM usuarios;
	SELECT * FROM cursos;
	SELECT * FROM inscripciones;

Luego se hace la configuracion del Proyecto:

Descomprimir el archive ZIP
Abrir NetBeans.
File → Open Project.
Seleccionar EduStreamWeb.


Luego se va a editar la conexion para no tener errores de conectividad con la base de datos:

Editar Conexion.java:

URL: jdbc:mysql://localhost:3306/edustream_db
Usuario: root
Contraseña: (tu contraseña)

Para ejecutarlo:

Verificar que el servidor GlassFish este iniciado.
Click derecho y luego Run.
Se abre en navegador automáticamente y luego inserta los datos de login para ingresar.

------------------------------------------------------------------------

Usuarios de Prueba:

PROFESOR: pcorderov@uvirtual.ac.cr / 1234

ESTUDIANTE: jhonnson6.12@gmail.com / 1234

ESTUDIANTE: oscarsolano@gmail.com / 1234

ESTUDIANTE: edersolano@gmail.com / 1234

ESTUDIANTE: yojansantana@gmail.com / 1234

ESTUDIANTE: kendallvasquez@gmail.com / 1234

------------------------------------------------------------------------
¿Dónde obtener ayuda?

Si hay algún problema, se puede revisar que la base de datos esté bien configurada, que el servidor esté activo y que la conexión JDBC esté correcta. También se puede consultar el README o contactar a los desarrolladores del proyecto.
------------------------------------------------------------------------
