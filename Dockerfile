# Use the official PHP image with Apache
FROM php:8.0-apache

# Set working directory
WORKDIR /var/www/html

# Copy project files
COPY . /var/www/html/

# Enable Apache mod_rewrite (optional, useful for handling URLs)
RUN a2enmod rewrite

# Expose port 80 for the web server
EXPOSE 80

# Start Apache when the container runs
CMD ["apache2-foreground"]
