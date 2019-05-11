FROM httpd:2.4
USER root
COPY authorized_keys /root/.ssh/authorized_keys
COPY entrypoint.sh /root/entrypoint.sh
COPY wsgi.conf /usr/local/apache2/conf/extra/wsgi.conf
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    python3-dev \
    gcc \
    openssh-server \
    virtualenv \
    vim \
    libapache2-mod-wsgi-py3
ENV APP_PATH=/usr/local/apache2/htdocs/backend