FROM php:7.4-apache
LABEL maintainer="kennith.leung@gmail.com"

RUN apt-get update
RUN apt-get install -yqq libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev libonig-dev libzip-dev
RUN docker-php-ext-install mbstring pdo_mysql curl json intl gd xml zip bz2 opcache

COPY .docker/etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY .docker/etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
