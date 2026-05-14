FROM ubuntu:latest

RUN apt update
RUN apt install apache2 -y

EXPOSE 80
ONBUILD COPY index.html /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
