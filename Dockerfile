FROM php:7.0-apache
#COPY . /var/www/php
COPY src/ /var/www/php

#EXPOSE 8081

