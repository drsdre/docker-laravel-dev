#!/usr/bin/env bash
docker push drsdre/php-laravel-dev:7.4-cli-alpine \
&& docker push drsdre/php-laravel-dev:7.4-fpm-alpine \
&& docker push drsdre/php-laravel-dev:8.0-cli-alpine \
&& docker push drsdre/php-laravel-dev:8.0-fpm-alpine \
&& docker push drsdre/php-laravel-dev:8.1-cli-alpine \
&& docker push drsdre/php-laravel-dev:8.1-fpm-alpine