FROM php:7.4-fpm-alpine
COPY . /var/www
WORKDIR /var/www

RUN apk add --no-cache  mysql-client bash
RUN docker-php-ext-install pdo pdo_mysql
COPY . /var/www

RUN rm -rf /var/www/html && ln -s public html

ENV DOCKERIZE_VERSION v0.6.1
ENV COMPOSER_PROCESS_TIMEOUT=900

RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz
    
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer    

EXPOSE 9000