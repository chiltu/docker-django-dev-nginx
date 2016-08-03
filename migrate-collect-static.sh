#!/bin/sh
docker-compose exec web bash -c "DJANGO_SETTINGS_MODULE=composeexample.settings.development python manage.py collectstatic --noinput &&  python manage.py makemigrations && python manage.py migrate"
