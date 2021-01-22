# Docker Namespaces 

<img src="ns.png">

## Cgroups in containers

```
267  docker run -d --name x1  alpine ping fb.com 
  268  docker  ps 
  269  docker  stats x1 
  270  history 
  271  docker  stats 
  272  history 
  273  docker ps
  274  docker run -d --name x3  --memory 100m   alpine ping fb.com 
  
 ```
 
 ## CPU and ram limiting 
 
 ```
 282  docker run -d --name x4  --cpuset-cpus=0 --cpu-shares=20   alpine ping fb.com 
  283  docker run -d --name x5  --cpuset-cpus=0 --cpu-shares=20  -m 200m  alpine ping fb.com
  
```


## web servers 

<img src="webserver.png">

## TOmcat Dockerfile

```
FROM tomcat 
MAINTAINER  ashutoshh@linux.com
WORKDIR  /usr/local/tomcat/webapps
RUN mkdir app
WORKDIR  app
COPY myapp .
RUN chmo 755 /usr/local/tomcat/webapps/app -R 
EXPOSE 8080

```


## building image

```
[ec2-user@ip-172-31-81-232 javawebapp]$ docker build  -t  ashujsp:v1  .
Sending build context to Docker daemon   7.68kB
Step 1/8 : FROM tomcat
 ---> 040bdb29ab37
Step 2/8 : MAINTAINER  ashutoshh@linux.com
 ---> Running in 567ad6c72b9a
Removing intermediate container 567ad6c72b9a
 ---> e2d39bb03d33
Step 3/8 : WORKDIR  /usr/local/tomcat/webapps
 ---> Running in c4bee97c160e
Removing intermediate container c4bee97c160e
 ---> 881232f85fc6
Step 4/8 : RUN mkdir app
 ---> Running in 03c9e2d1402f
Removing intermediate container 03c9e2d1402f
 ---> 1945e72e2722
Step 5/8 : WORKDIR  app
 ---> Running in 65c3e46fdca0
Removing intermediate container 65c3e46fdca0
 ---> 554e1c17c148
Step 6/8 : COPY myapp .
 ---> 0cce337be5e0
Step 7/8 : RUN chmod 755 /usr/local/tomcat/webapps/app -R
 ---> Running in 9146d94cdeca


```



## Springboot app with maven in Dockerifle

```
[ec2-user@ip-172-31-81-232 project-java-spring-webapp]$ cat Dockerfile 
FROM tomcat
MAINTAINER ashutoshh@linux.com
WORKDIR  /usr/local/tomcat/
RUN mkdir app
WORKDIR  app
ADD  .  .
RUN  apt  update -y
RUN apt install maven -y
RUN mvn clean package
# will connect to automated server on internet and build package to war file 
# this may take time depending on speed of compilation
RUN mv * /usr/local/tomcat/webapps/
EXPOSE 8080 
[ec2-user@ip-172-31-81-232 project-java-spring-webapp]$ ls  -a
.  ..  Dockerfile  LICENSE  Readme.md  pom.xml  src
[ec2-user@ip-172-31-81-232 project-java-spring-webapp]$ vim .dockerignore
[ec2-user@ip-172-31-81-232 project-java-spring-webapp]$ cat .dockerignore 
*.md
Dockerfile
.dockerignore
LICENSE
.git

```


# image sharing 

<img src="reg.png">

## more closure look 

<img src="imgreg.png">

## pushing image on docker hub 

```
352  docker  login  
  353  docker  images  |   grep -i ashu
  354  docker  tag  ashujsp:v1    dockerashu/ashujsp:v1  
  355  docker  images  |   grep -i ashu
  356  docker  push  dockerashu/ashujsp:v1  
  357  docker  logout 

```
