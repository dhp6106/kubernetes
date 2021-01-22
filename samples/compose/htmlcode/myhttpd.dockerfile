FROM oraclelinux:8.3
MAINTAINER dhavla.parikh@oracle.com
RUN yum install httpd -y
WORKDIR /var/www/html/
COPY webapp .
EXPOSE 80
# CMD systemctl start httpd -- this will not work as the ststemctl is dependent on systemd and that is dependent on kernal boot process.

ENTRYPOINT ["httpd","-DFOREGROUND"]
