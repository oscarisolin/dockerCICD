#!/bin/sh
sed -i s+#PermitRootLogin+PermitRootLogin+ /etc/ssh/sshd_config
sed -i s+#PubkeyAuthentication+PubkeyAuthentication+ /etc/ssh/sshd_config
service ssh start
service ssh status
mkdir /usr/local/apache2/htdocs/backend
echo 'LoadModule wsgi_module /usr/lib/apache2/modules/mod_wsgi.so' >> /usr/local/apache2/conf/httpd.conf
echo 'Include conf/extra/wsgi.conf' >> /usr/local/apache2/conf/httpd.conf
httpd-foreground > apache.log
tail -f apache.log
