FROM php:7-fpm

RUN apt-get update && apt-get install -y mariadb-client --no-install-recommends \
    && docker-php-ext-install pdo_mysql

RUN apt-get install -y git unzip zip