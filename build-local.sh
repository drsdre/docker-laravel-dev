#!/usr/bin/env bash
docker build . -f 7.1/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:7.1-cli-alpine
docker build . -f 7.1/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:7.1-fpm-alpine
docker build . -f 7.2/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:7.2-cli-alpine
docker build . -f 7.2/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:7.2-fpm-alpine
docker build . -f 7.3/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:7.3-cli-alpine
docker build . -f 7.3/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:7.3-fpm-alpine
docker build . -f 7.3/alpine/fpm-nginx/Dockerfile -t drsdre/php-laravel-dev:7.3-fpm-nginx-alpine
docker build . -f 7.4/alpine/cli/Dockerfile -t drsdre/php-laravel-dev:7.4-cli-alpine
docker build . -f 7.4/alpine/fpm/Dockerfile -t drsdre/php-laravel-dev:7.4-fpm-alpine
docker build . -f 7.4/alpine/fpm-nginx/Dockerfile -t drsdre/php-laravel-dev:7.4-fpm-nginx-alpine