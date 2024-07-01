FROM registry.ap-southeast-1.aliyuncs.com/moeyy/php:7.4-apache

RUN apt-get update && apt-get install -y \
    libicu-dev \
    xz-utils \
    git \
    python3 \
    libgmp-dev \
    unzip \
    ffmpeg

RUN docker-php-ext-install intl
RUN docker-php-ext-install gmp

RUN a2enmod rewrite

COPY resources/php.ini /usr/local/etc/php/

COPY . /var/www/html/alltube/

WORKDIR /var/www/html/alltube/

RUN cd /var/www/html/alltube/ && curl -sS https://getcomposer.org/installer | php -- --quiet

RUN php composer.phar check-platform-reqs --no-dev

RUN php composer.phar install --prefer-dist --no-progress --no-dev --optimize-autoloader

RUN mkdir templates_c \
    && chmod 770 -R templates_c \
    && chown www-data -R templates_c

ENV CONVERT=1
