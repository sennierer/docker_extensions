#!/bin/bash
if [ -d "/var/www/html/myenv" ]; then
  source /var/www/html/myenv && service celeryd start
else
  su - user -c "virtualenv -p python3 /var/www/html/myenv && . /var/www/html/myenv/bin/activate && pip install -r /var/www/html/requirements.txt" && service celeryd start
fi
