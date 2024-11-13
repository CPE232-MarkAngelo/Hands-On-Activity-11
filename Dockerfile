#FROM ubuntu
MAINTAINER ma_localmachine

#skip prompts
ARG DEBIAN_FRONTEND=noninteractive

#update packages
RUN apt update; apt dist-upgrade

#install apache2 server
RUN apt install -y apache2

#install mariadb server
RUN apt install mariabd-server

#set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
