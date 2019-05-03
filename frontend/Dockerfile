FROM httpd:2.4
USER root
COPY authorized_keys /root/.ssh/authorized_keys
COPY entrypoint.sh /root/entrypoint.sh
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    openssh-server \ 
    vim
