# Curso: Despliegue de aplicaciones con Docker

## Integrantes

- [Glenda Pallo](https://github.com/glendypallo/DespliegueContenedores-Tarea1-GP)
- [Patricia Jaramillo](https://github.com/PatyJaramillo/DespliegueContenedores-Tarea1-PJ)
- [William Ayala](https://github.com/wrayalav/DespliegueContenedores-Tarea1-WA)
- [Guillermo Cifuentes]()
- [Ruperto Cisneros]()

## Tarea 1:  Despliegue en Docker de phpMyAdmin

![Servidor de aplicaciones][appsrv-shield]
![Servidor de base de datos][dbsrv-shield]
![Servidor de contenedores][cont-shield]

<!-- Titulo -->

## Construido con

- Docker
- MySQL:lts-oracle
- PhpMyAdmin:5.0

## Archivos

La tarea contiene los siguientes archivos:

| Archivo | Descripción |
| ---- | ---- |
| [.env](.env) | Variables de entorno. |
| [despliegue.txt](despliegue.txt) | Este arcvhivo contiene los comandos de docker para creación de: _red_, _volumen_, _contenedor de **MySQL**_, y _contenedor de **PhpMyAdmin**_. |
| [init.sql](init.sql) | Archivo con los comandos sql (_Mysql_) para inicizalizar la base de datos **consultorio**. | 
  
## Procedimiento




<!-- MARKDOWN LINKS & IMAGES -->
[appsrv-shield]: https://img.shields.io/badge/APP%20SRV-PHP%20MY%20ADMIN-9cf?style=for-the-badge&logo=php&logoColor=red
[dbsrv-shield]: https://img.shields.io/badge/DB%20SRV-My%20SQL%20LTS%20Oracle-yellowgreen?style=for-the-badge&logo=mysql
[cont-shield]: https://img.shields.io/badge/CONTAINER-DOCKER-red?style=for-the-badge&logo=docker
