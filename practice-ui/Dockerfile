# base image
FROM debian:9.8-slim

MAINTAINER Eduardo Cervantes <eduardo.c.cervantes@oracle.com>

# install dependencies
RUN apt-get -y update \
    && apt-get install -y \
        git build-essential \
        apache2 \
        vim \
        software-properties-common \
        dos2unix \
    && mkdir -p /opt/app

RUN apt-get install -q -y curl apt-transport-https apt-utils dialog software-properties-common

RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs

RUN npm install -g @oracle/ojet-cli

#copy the Node Reload server - exposed at port 4500
RUN mkdir -p /opt/data/app
COPY ./package.json /opt/data/app/package.json
RUN cd /tmp && npm install
#RUN mkdir -p /opt/data/app && cp -a /tmp/node_modules /opt/data/app

ENV OAL_ENV 'dev'

EXPOSE 8001
EXPOSE 35729

# Copy over the apache configuration file and enable the site
# COPY MainUI.conf /etc/apache2/sites-available/MainUI.conf
# RUN a2ensite MainUI.conf

WORKDIR /opt/data/app
COPY ./entrypoint.sh /opt/data/entrypoint.sh
COPY . .

RUN dos2unix /opt/data/entrypoint.sh
RUN chmod +x /opt/data/entrypoint.sh

ENV GATEWAY_SERVER 'localhost'