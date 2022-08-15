# Nginx HTTP server as Base Image
FROM nginx:latest

# Copy Web Content to Document root
COPY . /usr/share/nginx/html

WORKDIR /etc/nginx

CMD ["nginx","-g","daemon off;"]
