# Use PHP 8.2 with Apache
FROM php:8.2-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Set working directory
WORKDIR /var/www/html

# Copy all files into Apache root
COPY . /var/www/html

# Expose default Apache port
EXPOSE 80
