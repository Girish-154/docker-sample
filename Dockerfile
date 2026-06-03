FROM httpd:2.4

RUN sed -i 's/Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

RUN echo "<h1>Cloud Run Working from Apache HTTPD</h1>" > /usr/local/apache2/htdocs/index.html

EXPOSE 8080
