FROM php:8.2-apache

# Enable mod_rewrite (optional but common)
RUN a2enmod rewrite

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy contents of public folder into Apache's root
COPY public/ /var/www/html/

# Set recommended permissions (optional)
RUN chown -R www-data:www-data /var/www/html

# Expose port (Render handles this automatically)
EXPOSE 80
