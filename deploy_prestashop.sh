#!/bin/bash

# Cargar variables
source .env

# Descargar y descomprimir PrestaShop
cd /tmp
wget https://github.com/PrestaShop/PrestaShop/releases/download/8.0.4/prestashop_8.0.4.zip
unzip prestashop_8.0.4.zip
sudo mv prestashop/* $PRESTASHOP_DIR

# Asignar permisos a Apache
sudo chown -R www-data:www-data $PRESTASHOP_DIR
sudo chmod -R 755 $PRESTASHOP_DIR

# Configurar Apache
sudo sed -i "s|DocumentRoot /var/www/html|DocumentRoot $PRESTASHOP_DIR|" $APACHE_CONF
sudo systemctl restart apache2
