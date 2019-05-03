FROM python:3
USER root
COPY authorized_keys /root/.ssh/authorized_keys
COPY entrypoint.sh /root/entrypoint.sh
RUN apt-get update && apt-get install -y \
    python-dev \
    gcc \
    openssh-server \
    virtualenv

