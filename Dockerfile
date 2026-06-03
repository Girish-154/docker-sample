FROM centos:7

RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf

RUN mkdir -p /var/www/html

RUN echo "<h1>Cloud Run Working from CentOS 7</h1>" > /var/www/html/index.html

RUN chown -R apache:apache /var/www/html && \
    chmod -R 755 /var/www/html

EXPOSE 8080

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
