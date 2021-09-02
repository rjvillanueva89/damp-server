# image name: amp

# Use the official image as a parent image.
FROM php:7.4-apache

# Enable htaccess
RUN a2enmod rewrite

# install required extensions
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install --fix-missing -y libpq-dev
RUN apt-get install --no-install-recommends -y libpq-dev
RUN apt-get install -y libxml2-dev libbz2-dev zlib1g-dev libzip-dev zip
RUN apt-get -y install libsqlite3-dev libsqlite3-0 mariadb-client curl exif ftp
RUN docker-php-ext-install intl
RUN docker-php-ext-install mysqli pdo pdo_mysql zip
RUN docker-php-ext-enable mysqli
RUN docker-php-ext-enable pdo
RUN docker-php-ext-enable pdo_mysql
RUN docker-php-ext-enable zip
RUN apt-get -y install --fix-missing zip unzip
RUN apt-get -y install --fix-missing git

# fix permissions
USER root