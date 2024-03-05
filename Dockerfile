FROM php:8.2-apache

WORKDIR /var/www/html
# import extention installer recomended by php
ADD   https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/ 
# install needed libraries and extentions 
RUN  apt update \
    && apt upgrade -y \
    && chmod 777 /usr/local/bin/install-php-extensions\
    && apt install -y curl libpng-dev libjpeg62-turbo-dev libfreetype6-dev libcurl4-openssl-dev zlib1g libzip-dev \
    && docker-php-ext-install curl gd zip pdo_mysql
COPY ./ /var/www/html/back-end
ARG $APP_ENV="prod"
ENV APP_ENV=$APP_NEV

EXPOSE 80
