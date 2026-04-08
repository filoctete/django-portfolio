#!/bin/bash

echo "--- BUILDING STATIC FILES ---"
python manage.py collectstatic --noinput --clear

echo "--- RUNNING MIGRATIONS ---"
python manage.py migrate --noinput

echo "--- CREATING SUPERUSER ---"
python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'freitas.joao2000@email.com', 'senha1') if not User.objects.filter(username='admin').exists() else None"

echo "--- BUILD FINISHED ---"