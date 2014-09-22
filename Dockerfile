# This is a comment
FROM ubuntu:14.04
MAINTAINER Max Sills <m@s.c>
RUN apt-get update && apt-get install -y golang
RUN apt-get install git
