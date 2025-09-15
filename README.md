# Curso: Despliegue de aplicaciones con Docker<br/>CEC-EPN<br/><br/>Tarea 1:  Despliegue en Docker de phpMyAdmin

![Servidor de aplicaciones][appsrv-shield]
![Servidor de base de datos][dbsrv-shield]
![Servidor de contenedores][cont-shield]

## Integrantes

- [Glenda Pallo](https://github.com/glendypallo/DespliegueContenedores-Tarea1-GP)
- [Patricia Jaramillo](https://github.com/PatyJaramillo/DespliegueContenedores-Tarea1-PJ)
- [William Ayala](https://github.com/wrayalav/DespliegueContenedores-Tarea1-WA)
- [Guillermo Cifuentes](https://github.com/guillogps/DespliegueContenedores-Tarea1-GC)
- [Ruperto Cisneros](https://github.com/srcisnerosv-star/DespliegueContenedores-Tarea1-RC)

<br/>

## Introducción

En el marco del curso Despliegue de Aplicaciones con Docker, la presente tarea tuvo como objetivo implementar un entorno de base de datos gestionado mediante contenedores, utilizando MySQL como motor de base de datos y phpMyAdmin como herramienta de administración web.

El uso de Docker permite abstraer la configuración del sistema operativo y garantizar la portabilidad del entorno, facilitando el despliegue, la administración y la replicación en diferentes equipos de trabajo. Mediante esta práctica se buscó reforzar los conceptos de:

- [X] Creación y administración de redes y volúmenes en Docker.
- [X] Despliegue de contenedores de servicios (MySQL y phpMyAdmin).
- [X] Inicialización de una base de datos a partir de un archivo init.sql.
- [X] Validación del correcto funcionamiento mediante la interfaz gráfica de phpMyAdmin.

> [!NOTE]
> Este ejercicio representa una base fundamental para el entendimiento de arquitecturas modernas basadas en contenedores, que son ampliamente utilizadas en entornos de desarrollo, pruebas y producción.

<br/>

## Construido con

- Docker
- MySQL versión [lts-oracle](https://hub.docker.com/_/mysql)
- PhpMyAdmin versión [5.0](https://hub.docker.com/_/phpmyadmin)

<br/>

## Archivos

La tarea contiene los siguientes archivos:

| Archivo | Descripción |
| ---- | ---- |
| [.env](.env) | Variables de entorno necesarias para inicializar y administrar la base de datos `consultorio`. |
| [despliegues.txt](despliegues.txt) | Este arcvhivo contiene los comandos de docker para creación de: _red_, _volumen_, _contenedor de **MySQL**_, y _contenedor de **PhpMyAdmin**_. |
| [init.sql](init.sql) | Archivo con los comandos sql (_Mysql_) para inicizalizar la base de datos `consultorio`. | 

<br/>

## Procedimiento

### RED

1. Creación de la red:

   <img width="2044" height="1149" alt="image" src="https://github.com/user-attachments/assets/a92068a6-9b64-49a8-9c3f-30ba52435d42" />

2. Comprobación de la creación:

   <img width="2048" height="1155" alt="image" src="https://github.com/user-attachments/assets/1a7d8619-76bb-46b4-92ba-76863b2ecca0" />

### VOLUMEN

1. Creación del volumen:

   <img width="2046" height="1149" alt="image" src="https://github.com/user-attachments/assets/8e243aa1-eb67-467f-abbb-f459e3e7b8b3" />

2. Comprobación de la creación:

   <img width="2048" height="1155" alt="image" src="https://github.com/user-attachments/assets/32b4a3a0-f9ca-4461-b9a5-6622cc22d3bb" />

### CONTENEDORES
  
1. Creación del contenedor de MySQL:

   <img width="2047" height="1154" alt="image" src="https://github.com/user-attachments/assets/7eeea999-7290-4ccb-a65b-3dcf563262d0" />

2. Creación del contenedor de PhpMyAdmin:

   <img width="2050" height="1154" alt="image" src="https://github.com/user-attachments/assets/52a0a2e3-b212-4fa3-b035-d2faa29f713e" />

3. Comprobación de la creación:

   <img width="2052" height="1155" alt="image" src="https://github.com/user-attachments/assets/cb0af743-1d8f-4469-800e-027d7152a51d" />

### VISUALIZACIÓN

1. Página de Login de PhpMyAdmin:

   <img width="2049" height="1153" alt="image" src="https://github.com/user-attachments/assets/71b1c922-9315-48cc-a8e3-6dc87a17302e" />

2. Página principal de PhpMyAdmin:

   <img width="2046" height="1155" alt="image" src="https://github.com/user-attachments/assets/e37c8d5a-c834-4f05-b6e2-7862448ac110" />

3. Visualización de la información de una de las tablas:

   <img width="2050" height="1156" alt="image" src="https://github.com/user-attachments/assets/36c60805-b174-4f1e-a1bd-9cb35a58a896" />

<br/>

## Conclusiones

- La práctica permitió comprender la importancia de los contenedores Docker como herramienta para el despliegue de aplicaciones de manera rápida, portable y consistente.

- La configuración de redes y volúmenes evidenció la necesidad de separar responsabilidades: la red como medio de comunicación entre contenedores, y el volumen como mecanismo de persistencia de datos.

- El despliegue de MySQL y phpMyAdmin en contenedores diferentes, pero interconectados, permitió observar cómo se pueden orquestar servicios independientes para que funcionen como un sistema integrado.

- El archivo init.sql resultó fundamental para automatizar la creación y carga inicial de la base de datos consultorio, reduciendo tareas manuales y asegurando uniformidad en la configuración.

- Finalmente, la interfaz gráfica de phpMyAdmin validó el correcto funcionamiento de los contenedores, demostrando la interacción eficiente entre la base de datos y la aplicación cliente.

> [!IMPORTANT]
> Con esta práctica se sentaron las bases para la implementación de entornos más complejos, acercando a los estudiantes al uso de Docker como herramienta esencial en el ámbito de la ingeniería de software y el despliegue de aplicaciones modernas.

<!-- MARKDOWN LINKS & IMAGES -->
[appsrv-shield]: https://img.shields.io/badge/APP%20SRV-PHP%20MY%20ADMIN-9cf?style=for-the-badge&logo=php&logoColor=red
[dbsrv-shield]: https://img.shields.io/badge/DB%20SRV-My%20SQL%20LTS%20Oracle-yellowgreen?style=for-the-badge&logo=mysql
[cont-shield]: https://img.shields.io/badge/CONTAINER-DOCKER-red?style=for-the-badge&logo=docker
