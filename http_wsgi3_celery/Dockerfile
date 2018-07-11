FROM acdh/http_wsgi3
MAINTAINER Matthias Schlögl <matthias.schloegl@oeaw.ac.at>

RUN apt-get update && \
    apt-get -y install rabbitmq-server wget && \
    apt-get clean && \
    cd /etc/init.d && \
    wget https://raw.githubusercontent.com/celery/celery/3.1/extra/generic-init.d/celeryd && \
    chmod 0755 celeryd

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY celeryd /etc/default/celeryd
COPY start_celery.sh /opt/start_celery.sh

RUN chmod 0750 /opt/start_celery.sh && chmod 640 /etc/default/celeryd

