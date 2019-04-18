FROM python:3
USER root
RUN apt-get update && apt-get install -y \
    python-dev \
    gcc \
    virtualenv
CMD touch test.txt && tail -f test.txt

