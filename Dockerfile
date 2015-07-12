# This is a comment
# To Build: sudo docker build -t="sillsm/runner:v1" .
FROM ubuntu:14.04
MAINTAINER Max Sills <m@s.c>
RUN apt-get update && apt-get install -y golang
RUN apt-get install git -y
RUN apt-get install protobuf-compiler -y
# Clone this repo into the container.
RUN git clone https://github.com/sillsm/econix-devenv
# Clone the protocol definition into the container.
RUN git clone https://github.com/sillsm/econix-proto
