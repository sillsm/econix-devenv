# This is a comment
FROM ubuntu:14.04
MAINTAINER Max Sills <m@s.c>
RUN apt-get update && apt-get install -y golang
RUN apt-get install git -y
RUN apt-get install npm -yqq
RUN apt-get install libxml2-dev -y
RUN apt-get install nodejs-legacy -y
RUN git clone https://github.com/ajaxorg/cloud9
RUN cd cloud9 && npm install
#trying http://codiad.com/ and nginx stuff
RUN apt-get install nginx -y
RUN echo "server { location / { root /data/www;}}" > etc/nginx/nginx.conf
RUN mkdir /data
RUN mkdir /data/www
RUN echo "Hi world" > /data/www/index.htm
