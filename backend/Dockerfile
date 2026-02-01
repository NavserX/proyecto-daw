FROM debian:latest
LABEL maintainer="snavarroazorin@gmail.com"

RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql \
    php-yaml \
    nano \
    && apt-get clean

RUN a2enmod rewrite headers

WORKDIR /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
