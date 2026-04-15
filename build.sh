#!/bin/bash

echo "--- INSTALLING DEPENDENCIES ---"
python -m pip install -r requirements.txt

echo "--- BUILDING STATIC FILES ---"
# Criar a pasta manualmente por segurança
mkdir -p staticfiles
python manage.py collectstatic --noinput --clear --no-post-process

echo "--- RUNNING MIGRATIONS ---"
python manage.py migrate --noinput

echo "--- CREATING SUPERUSER ---"
python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'freitas.joao2000@email.com', 'senha1') if not User.objects.filter(username='admin').exists() else None"

echo "--- BUILD FINISHED ---"