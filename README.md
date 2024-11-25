# Implantación de PrestaShop en AWS


## Descripción
Este proyecto automatiza la instalación de PrestaShop sobre una pila LAMP en AWS.


## Requisitos
- Una instancia EC2 con Ubuntu Server.
- Dirección IP elástica y un dominio configurado.
- Certificado SSL/TLS con Let's Encrypt.


## Estructura del repositorio
- `scripts-2/`: Contiene los scripts de Bash.
- `conf/`: Archivos de configuración para Apache.
- `README.md`: Documento técnico.


## Instalación
1. Ejecutar `install_lamp.sh` para instalar LAMP.
2. Configurar HTTPS con `setup_letsencrypt_https.sh`.
3. Desplegar PrestaShop con `deploy_prestashop.sh`.
