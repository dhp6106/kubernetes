FROM java
MAINTAINER dhaval.parikh@oracle.com
RUN mkdir /code
COPY myClass.java /code/myClass.java
WORKDIR /code
#change working directory to /codes

RUN javac myClass.java

CMD ["java", "myClass"]
