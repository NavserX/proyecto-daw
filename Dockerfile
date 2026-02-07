FROM debian:latest
LABEL maintainer="snavarroazorin@gmail.com"

RUN apt-get update && apt-get install -y \
    apache2 php libapache2-mod-php php-mysql php-yaml \
    && apt-get clean

RUN a2enmod rewrite headers

WORKDIR /var/www/html

RUN rm -rf ./*

COPY frontend/public_html/ ./

COPY backend/ ./backend/

COPY backend/config/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /var/www/html

RUN ln -s /var/www/html/frontend/public_html/pages /var/www/html/app

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
