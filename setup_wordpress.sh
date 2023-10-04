#!/bin/bash

# Paso 1: Descargar WordPress
echo "Descargando WordPress..."
curl -O https://wordpress.org/latest.tar.gz

# Paso 2: Descomprimir
echo "Descomprimiendo archivos..."
tar -xzvf latest.tar.gz

# Mover el contenido a la carpeta 'wordpress' del proyecto
echo "Moviendo archivos a la carpeta del proyecto..."
cp -n -r wordpress/* ./wordpress/

# Eliminar archivos temporales
echo "Limpiando archivos temporales..."
rm -r latest.tar.gz

# Paso 3: Levantar el entorno Docker
echo "Levantando el entorno Docker..."
docker-compose up -d
