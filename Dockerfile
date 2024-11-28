FROM nginx:alpine

# Oyun dosyalarını Nginx'in varsayılan dizinine kopyala
COPY ./src/ /usr/share/nginx/html/

# Varsayılan Nginx portu
EXPOSE 80