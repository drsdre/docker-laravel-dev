FROM drsdre/php-laravel:7.4-fpm-nginx-alpine

MAINTAINER Andre Schuurman <docker@drsdre.org>

LABEL Description="This image contains PHP 7.4 FPM+NGINX on alpine OS with extension needed for Laravel applications development like xDebug" Vendor="Andre Schuurman" Version="7.4-fpm-alpine-dev"

ENV PHP_XDEBUG_DISPLAY_STARTUP_ERRORS="On" \
    PHP_XDEBUG_DISPLAY_ERRORS="On" \
    PHP_XDEBUG_ERROR_REPORTING="E_ALL" \
    PHP_XDEBUG_DEFAULT_ENABLE="1" \
    PHP_XDEBUG_REMOTE_ENABLE="1" \
    PHP_XDEBUG_REMOTE_CONNECT_BACK="0" \
    PHP_XDEBUG_REMOTE_PORT="9000" \
    PHP_XDEBUG_PROFILER_ENABLE="1" \
    PHP_XDEBUG_PROFILER_OUTPUT_DIR="/tmp/snapshots" \
    PHP_XDEBUG_PROFILER_ENABLE_TRIGGER="1" \
    PHP_OPCACHE_VALIDATE_TIMESTAMPS="1"

# Install PHP PECL xdebug extensions
RUN apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
    && pecl install -o -f xdebug \
    &&  rm -rf /tmp/pear \
    && docker-php-ext-enable xdebug \
    && apk del -f .build-deps

COPY conf.d/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Add aliases for xdebug control
RUN echo 'alias xoff="mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.off && kill -USR2 1"' >> ~/.bashrc
RUN echo 'alias xon="mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.off /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && kill -USR2 1"' >> ~/.bashrc

# Cleanup
RUN rm -rf /tmp/*
