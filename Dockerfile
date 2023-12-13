FROM php:7.4.33-apache-bullseye

MAINTAINER Juri Hahn <juri.hahn@you-know.de>

RUN apt-get update

RUN apt-get install -y apt-utils

RUN apt-get install -y cron ca-certificates

RUN apt-get install -y zip unzip

RUN apt-get install -y zlib1g-dev libzip-dev

RUN apt-get install -y libgd-dev

RUN apt-get install -y libjpeg-dev

RUN apt-get install -y libjpeg62-turbo-dev

RUN apt-get install -y libpng-dev

RUN apt-get install -y libxml2-dev

RUN docker-php-ext-install mysqli

RUN docker-php-ext-install gd

RUN docker-php-ext-install zip

RUN docker-php-ext-install soap

RUN docker-php-ext-install pcntl

RUN a2enmod rewrite

RUN a2enmod ssl

RUN a2ensite default-ssl
