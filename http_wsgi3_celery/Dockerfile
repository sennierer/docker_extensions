FROM acdh/http_wsgi3
MAINTAINER Matthias Schlögl <matthias.schloegl@oeaw.ac.at>

RUN apt-get update && \
    apt-get -y install rabbitmq-server && \
    cd /etc/default && \
    wget https://raw.githubusercontent.com/sennierer/docker_extensions/master/celeryd && \
    service rabbitmq-server start && \
