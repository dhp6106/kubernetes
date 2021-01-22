FROM  python 
#  docker engine will receive singal to pull python based docker image from docker hub 
MAINTAINER  ashutoshh@linux.com 
# info about dockerfile creator 
RUN  mkdir  /code
# it will perform this operation in new image 
COPY  hello.py  /code/hello.py
# hello.py is at host system and  /code is in the container that will be created during run time of this file
CMD  ["python","/code/hello.py"]
# use of CMD instruction is to define default partent process for my docker image