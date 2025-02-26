# Gunakan Ubuntu sebagai base image
FROM ubuntu:latest

# Install Nginx
RUN apt update && apt install -y nginx

# Copy file HTML ke dalam container
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Perintah untuk menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
