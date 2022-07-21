FROM php:8.1-apache

COPY ./certs/localhost.crt /etc/ssl/certs/localhost.crt
COPY ./certs/localhost.key /etc/ssl/private/localhost.key

COPY ./default-vhost.conf /etc/apache2/sites-available/default-vhost.conf
COPY ./default-vhost-ssl.conf /etc/apache2/sites-available/default-vhost-ssl.conf

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN a2dissite 000-default default-ssl && \
    a2ensite default-vhost default-vhost-ssl && \
    a2enmod rewrite && \
    a2enmod ssl &&  \
    a2enmod socache_shmcb && \
    service apache2 restart
