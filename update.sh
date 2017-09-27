#!/bin/bash

#Este es un script para actualizar el sistema y actualizar ssh.

echo "Actualizando el sistema..."
sudo /usr/bin/apt-get update
echo ""
echo "Actualizando ssh a la version mas reciente"
sudo /usr/bin/apt-get install ssh
echo "Instalacion finalizada"
