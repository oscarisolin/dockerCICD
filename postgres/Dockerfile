FROM postgres
USER root
COPY 10-init.sh /docker-entrypoint-initdb.d/
RUN chmod 0755 /docker-entrypoint-initdb.d/10-init.sh
