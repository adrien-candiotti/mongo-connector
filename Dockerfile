#FROM frolvlad/alpine-python3
FROM python:3.5

RUN pip install mongo-connector
RUN pip install elastic2-doc-manager

ADD docker_entrypoint.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
