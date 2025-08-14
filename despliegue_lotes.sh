# Crear y ejecutar el contenedor
echo "Creando contenedor lotes..."
docker run -d --name lotes \
    -p 8080:80 \
    -v /srv/proyectos/app_lotes:/var/www/html/ \
    --network mysql_net \
    img_lotes || {
        echo "Error: No se pudo crear el contenedor"
        exit 1
    }

->

# Crear y ejecutar el contenedor
echo "Creando contenedor lotes..."

# Eliminar contenedor existente si existe
docker rm -f lotes 2>/dev/null || true

# Ejecutar el contenedor usando la imagen local
docker run -d --name lotes \
    -p 8080:80 \
    -v /srv/proyectos/app_lotes:/var/www/html/ \
    --network mysql_net \
    img_lotes:latest || {
        echo "Error: No se pudo crear el contenedor"
        exit 1
    }