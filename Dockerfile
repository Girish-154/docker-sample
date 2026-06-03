FROM ubuntu:latest

RUN apt update && \
    apt install -y apache2

RUN sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf

RUN sed -i 's/<VirtualHost \*:80>/<VirtualHost *:8080>/' \
    /etc/apache2/sites-available/000-default.conf

EXPOSE 8080

CMD ["apachectl", "-D", "FOREGROUND"]
