FROM ubuntu:latest

RUN apt update && \
    apt install -y apache2

CMD ["apachectl", "-D", "FOREGROUND"]
