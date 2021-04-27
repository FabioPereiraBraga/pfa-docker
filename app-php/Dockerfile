FROM php:7.4-fpm-alpine
COPY . /var/www
WORKDIR /var/www

RUN apk add --no-cache  mysql-client
RUN docker-php-ext-install pdo pdo_mysql
COPY . /var/www

RUN rm -rf /var/www/html && ln -s public html

EXPOSE 9000

ENTRYPOINT php artisan migrate:fresh --seed && php-fpm