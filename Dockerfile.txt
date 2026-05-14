FROM docker.io/ubuntu

RUN apt update -y 
RUN apt install apache2 -y

ONBUILD COPY index.html /var/www/html/

CMD apachectl -D FOREGROUND
