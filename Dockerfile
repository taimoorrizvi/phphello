FROM php:7.0-apache
#COPY . /var/www/php
COPY src/ /var/www/php

COPY virt1.conf /etc/apache2/sites-available/virt1.conf

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf &&\
    a2enmod rewrite &&\
    a2dissite 000-default &&\
    a2ensite virt1 &&\
    service apache2 restart

EXPOSE 8080

