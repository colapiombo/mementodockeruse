#!/bin/bash


COMPOSE_PROJECT_NAME=project

SLIM_HOST=project.local
SLIM_HOST_ALIASES=""


# Add hosts mapping for Magento in host machine
sudo -p "[sudo] Need admin privileges to write to /etc/hosts: " -s -- <<EOF
    # Remove existing host mappings
sed -i "/${SLIM_HOST}/d" /etc/hosts


# Export container IPs
echo "`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' doodleonchain_apache_1` ${SLIM_HOST} ${SLIM_HOST_ALIASES}" >> /etc/hosts
echo "`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' doodleonchain_adminer_1` adminer.${SLIM_HOST}" >> /etc/hosts
echo "`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' doodleonchain_phpmyadmin_1` phpmyadmin.${SLIM_HOST}" >> /etc/hosts
echo "`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' doodleonchain_rabbitmq_1` rabbitmq.${SLIM_HOST}" >> /etc/hosts



EOF

