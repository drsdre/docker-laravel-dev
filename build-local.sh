#!/usr/bin/env bash
docker build . -f 7.1/alpine/cli/Dockerfile -t drsdre/php-laravel:7.1-cli-alpine
docker build . -f 7.1/alpine/fpm/Dockerfile -t drsdre/php-laravel:7.1-fpm-alpine
docker build . -f 7.2/alpine/cli/Dockerfile -t drsdre/php-laravel:7.2-cli-alpine
docker build . -f 7.2/alpine/fpm/Dockerfile -t drsdre/php-laravel:7.2-fpm-alpine
docker build . -f 7.3/alpine/cli/Dockerfile -t drsdre/php-laravel:7.3-cli-alpine
docker build . -f 7.3/alpine/fpm/Dockerfile -t drsdre/php-laravel:7.3-fpm-alpine
