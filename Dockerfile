# image name: php-apache

# Use the official image as a parent image.
FROM php:7.4-apache

# Enable htaccess
RUN a2enmod rewrite