FROM tomcat
MAINTAINER dhaval.parikh@oracle.com
WORKDIR /usr/local/tomcat/webapps
RUN mkdir app
WORKDIR app
COPY myapp .
RUN chmod -R 755 /usr/local/tomcat/webapps/app
EXPOSE 8080
