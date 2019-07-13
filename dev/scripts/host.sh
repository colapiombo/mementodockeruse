#!/bin/bash

export COMPOSE_PROJECT_NAME=mementodockeruse


NETWORK=${COMPOSE_PROJECT_NAME}_project

HOST=project.local


apache_cntr=`docker-compose ps -q apache`
apache_ip=`docker inspect -f "{{.NetworkSettings.Networks.${NETWORK}.IPAddress}}" $apache_cntr`


phpmyadmin_cntr=`docker-compose ps -q phpmyadmin`
phpmyadmin_ip=`docker inspect -f "{{.NetworkSettings.Networks.${NETWORK}.IPAddress}}" $phpmyadmin_cntr`


adminer_cntr=`docker-compose ps -q adminer`
adminer_ip=`docker inspect -f "{{.NetworkSettings.Networks.${NETWORK}.IPAddress}}" $adminer_cntr`


mariadb_cntr=`docker-compose ps -q mariadb`
mariadb_ip=`docker inspect -f "{{.NetworkSettings.Networks.${NETWORK}.IPAddress}}" $mariadb_cntr`

rabbitmq_cntr=`docker-compose ps -q rabbitmq`
rabbitmq_ip=`docker inspect -f "{{.NetworkSettings.Networks.${NETWORK}.IPAddress}}" $rabbitmq_cntr`



# Add hosts mapping for Magento in host machine
sudo -p "[sudo] Need admin privileges to write to /etc/hosts: " -s -- <<EOF
# Remove existing host mappings
sed -i "/${HOST}/d" /etc/hosts


echo "${apache_ip} ${HOST} " >> /etc/hosts
echo "${phpmyadmin_ip} phpmyadmin.${HOST}" >> /etc/hosts
echo "${adminer_ip} adminer.${HOST}" >> /etc/hosts
echo "${rabbitmq_ip} rabbitmq.${HOST}" >> /etc/hosts


EOF