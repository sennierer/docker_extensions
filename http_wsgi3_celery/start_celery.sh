#!/bin/bash
if [ -d "/var/www/html/myenv" ]; then
  source /var/www/html/myenv && service celeryd start
else
  su - user -c "virtualenv -p python3 /var/www/html/myenv" && su - user -c  "source /var/www/html/myenv/bin/activate" && su - user -c  "pip install -r /var/www/html/requirements.txt" && service celery start
fi
