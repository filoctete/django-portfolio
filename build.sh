#!/bin/bash

echo "--- INSTALLING DEPENDENCIES ---"
python -m pip install -r requirements.txt

echo "--- BUILDING STATIC FILES ---"
# O --no-post-process evita que o WhiteNoise tente comprimir o que não deve durante o build
python manage.py collectstatic --noinput --clear --no-post-process

echo "--- RUNNING MIGRATIONS ---"
python manage.py migrate --noinput

echo "--- CREATING SUPERUSER ---"
python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'freitas.joao2000@email.com', 'senha1') if not User.objects.filter(username='admin').exists() else None"

echo "--- BUILD FINISHED ---"