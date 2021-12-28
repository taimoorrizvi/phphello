FROM php:7.0-apache
#COPY . /var/www/php
COPY src/ /var/www/php

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf &&\
    a2enmod rewrite &&\
    service apache2 restart

EXPOSE 8080

