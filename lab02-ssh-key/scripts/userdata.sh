#!/bin/bash
export PATH=$PATH:/usr/local/bin
sudo -i
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
apt-get install -y httpd
exho "<html><h1>Hola, Excelente ejercicio...<p></p><p>Continuamos!!!</p></h1></html>" > /var/www/html/index.html
systemctl start htppd
systemctl enable httpd
echo "Script terminado!" > hola.txt