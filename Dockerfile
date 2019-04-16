FROM drsdre/php-laravel:{{VERSION}}-{{TYPE}}-{{OS}}

MAINTAINER Andre Schuurman <docker@drsdre.org>

LABEL Description="This image contains PHP {{VERSION}} on {{OS}} OS with extension needed for Laravel applications development like xDebug" Vendor="Andre Schuurman" Version="{{VERSION}}-{{TYPE}}-{{OS}}-dev"

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


# Install the extensions
RUN apk add --update --no-cache \
	git \
	vim \
	screen \
	wget

# Install PHP PECL xdebug extensions
RUN apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
    && pecl install -o -f xdebug \
    &&  rm -rf /tmp/pear \
    && docker-php-ext-enable xdebug \
    && apk del -f .build-deps

COPY conf.d/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Install Composer
# Register the COMPOSER_HOME environment variable
ENV COMPOSER_HOME /composer

# Add global binary directory to PATH and make sure to re-export it
ENV PATH /composer/vendor/bin:$PATH

# Install composer
ENV COMPOSER_HOME /composer
ENV PATH ./vendor/bin:/composer/vendor/bin:$PATH
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
  && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
  && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }"

RUN php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --snapshot && rm -rf /tmp/composer-setup.php

# Install PHPUnit for testing
RUN composer global require "phpunit/phpunit:*"

# Install Laravel Envoy for running tasks
RUN composer global require laravel/envoy

# Add aliases for xdebug control
RUN echo 'alias xoff="mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.off && kill -USR2 1"' >> ~/.bashrc
RUN echo 'alias xon="mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.off /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && kill -USR2 1"' >> ~/.bashrc

# Cleanup
RUN rm -rf /tmp/*