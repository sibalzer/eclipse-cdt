FROM openjdk:14-alpine

MAINTAINER Simon Balzer version: 0.1

WORKDIR /work
RUN apk update 
RUN apk add git make wget zip
RUN wget -q -O eclipse.tar.gz "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2019-09/R/eclipse-cpp-2019-09-R-linux-gtk-x86_64.tar.gz"
RUN tar xzf eclipse.tar.gz 
RUN rm eclipse.tar.gz

RUN mkdir /workspace
VOLUME /workspace