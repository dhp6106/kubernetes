#docker run --name some-mysql2 --network dhpbrdg1 -e MYSQL_ROOT_PASSWORD=dhparikh -e MYSQL_USER=oracle -e MYSQL_PASSWORD=dhparikh -e MYSQL_DATABASE=training -d mysql

FROM mysql
MAINTAINER dhaval.parikh@oracle.com
ENV MYSQL_ROOT_PASSWORD dhparikh
ENV MYSQL_USER oracle
ENV MYSQL_PASSWORD dhparikh
ENV MYSQL_DATABASE training
# ENTRYPOINT entrypoint.sh
