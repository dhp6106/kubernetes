FROM oraclelinux:8.3
MAINTAINER dhavla.parikh@oracle.com
RUN yum install httpd -y
RUN yum install git -y
WORKDIR /var/www/html/
RUN git clone https://github.com/mdn/beginner-html-site-styled 
RUN chmod -R 755 .
EXPOSE 80
# CMD systemctl start httpd -- this will not work as the ststemctl is dependent on systemd and that is dependent on kernal boot process.

ENTRYPOINT ["httpd","-DFOREGROUND"]
