#!/bin/bash

# Cargar variables
source sh.env

# Instalar Certbot
sudo apt install -y certbot python3-certbot-apache

# Configurar Apache para HTTPS
sudo certbot --apache -d $DOMAIN --email $EMAIL --agree-tos --no-eff-email --redirect

# Reiniciar Apache
sudo systemctl restart apache2
