#!/usr/bin/env bash
docker build . -f 7.4/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:7.4-cli-alpine \
&& docker build . -f 7.4/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:7.4-fpm-alpine \
&& docker build . -f 8.0/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:8.0-cli-alpine \
&& docker build . -f 8.0/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:8.0-fpm-alpine \
&& docker build . -f 8.1/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:8.1-cli-alpine \
&& docker build . -f 8.1/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:8.1-fpm-alpine \
&& docker build . -f 8.2/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:8.2-cli-alpine \
&& docker build . -f 8.2/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:8.2-fpm-alpine