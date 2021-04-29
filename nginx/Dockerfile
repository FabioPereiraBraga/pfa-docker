FROM  nginx:1.15.0-alpine
ADD ./nginx/config/default.conf /etc/nginx/conf.d
COPY ./app-php /var/www

EXPOSE 80