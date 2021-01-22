FROM centos:latest
MAINTAINER dhaval.parikh@oracle.com
COPY hello.txt .
RUN hostname -I | awk '{print $1}' >> hello.txt
CMD ["bash"]
