FROM amazonlinux:latest

MAINTAINER Loris Strozzini <lstrozzini@gmail.com>

RUN yum update -y
ADD modules /tmp/modules
RUN yum -y install tar hostname puppet; \
puppet apply --modulepath=/tmp/modules 
EXPOSE 8888
