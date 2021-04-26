#!/bin/bash
export PATH=$PATH:/usr/local/bin
sudo -i
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
apt-get install -y httpd curl bind-utils
exho "<html><h1>Hola, Excelente ejercicio...<p></p><p>Continuamos!!!</p></h1></html>" > /var/www/html/index.html
systemctl start htppd
sleep 60

# for ((i=1;i<=5;i++)); do curl -v "http://mylb.dev.usuarioroot.com" >> /var/www/html/index.html ; done

systemctl start htppd
systemctl enable htppd