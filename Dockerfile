FROM composer:1.9.1 as composer
FROM php:7.3.9-fpm-alpine3.10

# Install Composer
COPY --from=composer /usr/bin/composer /usr/local/bin/composer

# Copy project sources
COPY . /var/www/html
