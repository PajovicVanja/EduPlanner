# Use an official PHP image with Apache
FROM php:8.1-apache

# Set the working directory to /var/www/html (this is where Apache looks by default)
WORKDIR /var/www/html

# Copy the contents of the src directory to the working directory
COPY src/ /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache service with ServerName set to localhost
CMD ["apache2-foreground", "-D", "FOREGROUND", "-c", "ServerName localhost"]
