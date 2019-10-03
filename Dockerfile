FROM openjdk:14

MAINTAINER Simon Balzer version: 0.1

WORKDIR /work
RUN apt update 
RUN apt -y install make lib32z1 lib32ncurses5 zip
RUN wget -q -O eclipse.tar.gz "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2019-09/R/eclipse-cpp-2019-09-R-linux-gtk-x86_64.tar.gz"
RUN tar xzf eclipse.tar.gz 
RUN rm eclipse.tar.gz

RUN mkdir /workspace
VOLUME /workspace