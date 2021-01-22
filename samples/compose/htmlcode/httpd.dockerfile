FROM httpd
MAINTAINER dhavla.parikh@oracle.com
WORKDIR /var/www/html/
COPY webapp .
EXPOSE 80
