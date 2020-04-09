#!/usr/bin/env bash
docker push drsdre/php-laravel-dev:7.2-cli-alpine \
&& docker push drsdre/php-laravel-dev:7.2-fpm-alpine \
&& docker push drsdre/php-laravel-dev:7.3-cli-alpine \
&& docker push drsdre/php-laravel-dev:7.3-fpm-alpine \
&& docker push drsdre/php-laravel-dev:7.3-fpm-nginx-alpine \
&& docker push drsdre/php-laravel-dev:7.4-cli-alpine \
&& docker push drsdre/php-laravel-dev:7.4-fpm-alpine \
&& docker push drsdre/php-laravel-dev:7.4-fpm-nginx-alpine