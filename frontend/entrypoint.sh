#!/bin/sh
sed -i s+#PermitRootLogin+PermitRootLogin+ /etc/ssh/sshd_config
sed -i s+#PubkeyAuthentication+PubkeyAuthentication+ /etc/ssh/sshd_config
service ssh start
service ssh status
httpd-foreground > apache.log
tail -f apache.log
