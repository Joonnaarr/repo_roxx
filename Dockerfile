# Usa la imagen oficial de Nginx como base
FROM nginx:latest

# Copia los archivos del sitio web desde tu máquina local al contenedor
COPY ./web /usr/share/nginx/html

# Expone el puerto 80 para permitir el acceso HTTP al contenedor
EXPOSE 80

# Comando por defecto para ejecutar Nginx en modo de primer plano
CMD ["nginx", "-g", "daemon off;"]
