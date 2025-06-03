# Usa la imagen base de Ubuntu más reciente
FROM ubuntu:latest

# Instala Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Elimina la configuración por defecto de Nginx
RUN rm /etc/nginx/sites-enabled/default

# Copia la configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/sites-available/default

# Crea un enlace simbólico para activar la configuración
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# Copia el contenido de tu carpeta 'website' al directorio de Nginx
# Asegúrate de que la carpeta 'website' esté en el mismo nivel que tu Dockerfile
COPY website /var/www/html

# Expone el puerto 80 para el tráfico web
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]