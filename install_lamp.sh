#!/bin/bash

# Cargar variables
source sh.env

# Actualizar sistema
sudo apt update && sudo apt upgrade -y

# Instalar Apache, MySQL, PHP y módulos necesarios
sudo apt install -y apache2 mysql-server php php-mysql libapache2-mod-php \
php-intl php-curl php-gd php-mbstring php-xml php-zip php-soap unzip

# Configurar directivas de PHP
sudo sed -i "s/memory_limit = .*/memory_limit = $PHP_MEMORY_LIMIT/" /etc/php/*/apache2/php.ini
sudo sed -i "s/max_input_vars = .*/max_input_vars = $PHP_MAX_INPUT_VARS/" /etc/php/*/apache2/php.ini
sudo sed -i "s/post_max_size = .*/post_max_size = $PHP_POST_MAX_SIZE/" /etc/php/*/apache2/php.ini
sudo sed -i "s/upload_max_filesize = .*/upload_max_filesize = $PHP_UPLOAD_MAX_FILESIZE/" /etc/php/*/apache2/php.ini

# Reiniciar Apache
sudo systemctl restart apache2
