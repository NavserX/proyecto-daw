FROM debian:latest
LABEL maintainer="snavarroazorin@gmail.com"

RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql \
    php-yaml \
    && apt-get clean

RUN a2enmod rewrite headers

WORKDIR /var/www/html

COPY frontend/ /var/www/html/

COPY backend/ /var/www/html/backend/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
