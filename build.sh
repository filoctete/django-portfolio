#!/bin/bash

echo "--- BUILDING STATIC FILES ---"
python3.12 -m pip install -r requirements.txt
python3.12 manage.py collectstatic --noinput --clear

echo "--- RUNNING MIGRATIONS ---"
python3.12 manage.py migrate --noinput

echo "--- CREATING SUPERUSER ---"
python3.12 manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'freitas.joao2000@email.com', 'senha1') if not User.objects.filter(username='admin').exists() else None"

echo "--- BUILD FINISHED ---"