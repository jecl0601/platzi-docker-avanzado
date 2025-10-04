#!/bin/bash

#Borra todas las imagenes sin etiqueta
docker image prune -a

#Borra todos los contenedores detenidos
docker container prune

#Borra todos los volumenes no utilizados
docker volume prune

#Borra todas las imagenes, contenedores y volumenes no utilizados
docker system prune

#Borra el cache de compilacion de docker
docker builder prune