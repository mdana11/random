FROM php:8.2-apache

COPY laravel-php/ /var/www/html/

RUN sed -i -e 's|/var/www/html|/var/www/html/public|' /etc/apache2/sites-available/000-default.conf

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN a2enmod rewrite

EXPOSE 80