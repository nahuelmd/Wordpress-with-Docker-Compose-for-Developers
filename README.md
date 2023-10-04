# Desarrollo de WordPress con Docker

Este repositorio proporciona una configuración de Docker para levantar un entorno local de WordPress, facilitando el desarrollo y las pruebas sin afectar otros proyectos o configuraciones en tu máquina.

## Estructura del Repositorio

- `docker-compose.yml`: Configuración de Docker para levantar los servicios de WordPress, MySQL y phpMyAdmin.
- `wordpress/`: Directorio donde se instalarán los archivos de WordPress.
- `mysql/`: Directorio para almacenar los datos persistentes de la base de datos.
- `setup_wordpress.sh`: Script para automatizar la descarga e instalación de WordPress y levantar el entorno Docker.

## Instrucciones de Uso

1. **Preparativos iniciales**:

   - Asegúrate de tener Docker y Docker Compose instalados en tu máquina.
   - Clona este repositorio a tu máquina local.

2. **Configuración inicial**:

   - Ejecuta el script `setup_wordpress.sh` para descargar e instalar WordPress. Esto también iniciará los contenedores de Docker.

   chmod +x setup_wordpress.sh
   ./setup_wordpress.sh

3. **Acceso a WordPress**:

   - Una vez que los contenedores estén en funcionamiento, puedes acceder a WordPress desde tu navegador utilizando `http://localhost:8002`.

4. **Acceso a phpMyAdmin**:

   - Puedes gestionar la base de datos de WordPress accediendo a phpMyAdmin en `http://localhost:8081`.

5. **Detener el entorno**:
   - Puedes detener los contenedores en cualquier momento con el comando `docker-compose down`.

## Notas

    - Necesitaras estos datos al momento de configurar wordpress, puedes cambiarlos en el archivo .env del repositorio.
    - usuario base de datos : root
    - nombre base de datos: wordpress_db
    - contraseña base de datos : your_password_1234
    - host de la base de datos: mysql
