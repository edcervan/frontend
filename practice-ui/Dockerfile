# start from base
FROM ubuntu:16.04

MAINTAINER Eduardo Cervantes <eduardo.c.cervantes@oracle.com>

# install system-wide deps for python and node
RUN apt-get -yqq update
RUN apt-get -yqq install curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -yq nodejs
RUN apt-get -yqq install bzip2


#copy application
WORKDIR /opt
ADD . /opt


#install oracle jet
RUN npm install -g @oracle/ojet-cli@7.2.0
RUN npm install @oracle/oraclejet@~7.2.0 @oracle/oraclejet-tooling@~7.2.0 --save


EXPOSE 8000
