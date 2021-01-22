FROM java
RUN mkdir /javaw
WORKDIR /javaw
#RUN wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz
RUN wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.60/src/apache-tomcat-8.5.60-src.tar.gz
RUN  tar xvf apache-tomcat-8.5.60-src.tar.gz
WORKDIR  /javaw/apache-tomcat-8.5.60-src/webapps
ADD myapp . 
WORKDIR  /javaw/apache-tomcat-8.5.60-src/bin
EXPOSE 8080
CMD ["./catalina.sh","run"]
