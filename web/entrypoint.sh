#!bin/bash

python manage.py migrate --noinput
python manage.py collectstatic --noinput
export DJANGO_SUPERUSER_PASSWORD=$SUPERUSER_PASSWORD
python manage.py createsuperuser --username $SUPERUSER_NAME --email $SUPERUSER_EMAIL --noinput || true
gunicorn web.wsgi:application --workers 3 --bind 0.0.0.0:8000
