#!/bin/bash

echo "--- INSTALLING DEPENDENCIES ---"
python -m pip install -r requirements.txt

echo "--- BUILDING STATIC FILES ---"
# Adicionamos o --no-post-process para evitar que o WhiteNoise falhe se faltar algum ficheiro
python manage.py collectstatic --noinput --clear --no-post-process

echo "--- RUNNING MIGRATIONS ---"
python manage.py migrate --noinput

echo "--- BUILD FINISHED ---"