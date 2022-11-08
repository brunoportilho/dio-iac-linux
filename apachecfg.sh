#!/bin/bash

echo " Atualizando servidor... "
apt update && apt upgrade -y 
apt install apache2 unzip -y


echo " Baixando e copiando aplicação... "
wget -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/main.zip -d /tmp/
cp -R /tmp/linux-site-dio-main/* /var/www/html/
