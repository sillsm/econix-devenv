# This is a comment
# To Build: sudo docker build -t="sillsm/runner:v1" .
FROM ubuntu:14.04
MAINTAINER Max Sills <m@s.c>

# General Stuff
RUN apt-get install vim -y
RUN apt-get install git -y
RUN apt-get install sed -y
RUN apt-get install protobuf-compiler -y

# Go Stuff
RUN apt-get update && apt-get install -y golang
env GOPATH /home/user/gocode
env PATH $PATH:$GOPATH/bin
RUN go get -u -v github.com/golang/protobuf/proto
RUN go get -u -v github.com/golang/protobuf/protoc-gen-go

# Clone repos into the container.
RUN git clone https://github.com/sillsm/econix-devenv
RUN git clone https://github.com/sillsm/econix-proto
