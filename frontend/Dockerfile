FROM debian:latest
LABEL maintainer="snavarroazorin@gmail.com"

RUN apt-get update && apt-get install -y \
    apache2 \
    && apt-get clean

RUN a2enmod rewrite

WORKDIR /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
