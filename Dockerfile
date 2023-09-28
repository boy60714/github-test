FROM php:7.4.3-fpm  
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev
RUN apt-get update && apt-get install -y iproute2 iputils-ping vim nginx
RUN docker-php-ext-install mysqli pdo pdo_mysql pdo_sqlite
RUN docker-php-ext-enable mysqli  pdo_mysql pdo_sqlite
COPY ./default.conf /etc/nginx/sites-enabled/default
COPY html/ /var/www/html/
CMD php-fpm -D && nginx -g "daemon off;"
