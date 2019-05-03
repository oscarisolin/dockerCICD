mkdir keys
mkdir jenkins/keys
ssh-keygen -t rsa -N "" -f keys/id_rsa
cp keys/id_rsa.pub frontend/authorized_keys
cp keys/id_rsa.pub backend/authorized_keys
cp keys/* jenkins/keys
