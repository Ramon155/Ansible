#!/bin/bash

#instalacion de ansible en maquina de vagrant (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

#Actualizacion del sistema y instalacion de ssh a la version mas reciente
echo "Actualizando el sistema..."
sudo /usr/sbin/apt-get update
echo ""
echo "Actualizando SSH a la version mas reciente..."

#copia ejemplos en  /home/vagrant (desde dentro del nodo mgmt)
#cp -a /vagrant/examples/* /home/vagrant
#chown -R vagrant:vagrant /home/vagrant

#configuracion del archivo hosts para nuestra red interna definida por Vagrantfile
#anade los hosts a nuestro nodo central de ansible.
cat >> /etc/hosts <<EOL

#vagrant environmets nodes
10.0.15.10 mgmt
10.0.15.11 lb
10.0.15.21 web1
10.0.15.22 web2
10.0.15.23
10.0.15.24
10.0.15.25
EOL
