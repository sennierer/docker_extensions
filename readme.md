# docker extensions

Repo containing docker env files based on evironments used at ACDH, but extended for some software and configs needed.

## http_wsgi3_celery

Extension of ACDHs http_wsgi3 environment type. Additionally installs rabbitmq and celery.

Prerequisites:
* either a virtualenv called "myenv" in the base directory
* or a requirements file called "requirements.txt" in the base directory
* a celery project definition called celery_settings.py also in the base directory
