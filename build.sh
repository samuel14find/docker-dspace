#!/bin/bash
shopt -s extglob

#for i in $( ls docker); do
#  case "$i" in
#       *-test )  ;;
#       * ) docker build -t unixelias/docker-dspace:$i docker/$i ;;
#  esac
#done


#Exclusivo para DEV version

docker build -t unixelias/docker-dspace:6.0-centos --add-host=postgres:127.0.0.1 --add-host=localhost:127.0.0.1 docker/dev && docker push unixelias/docker-dspace:6.0-centos;
