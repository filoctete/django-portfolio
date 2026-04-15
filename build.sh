#!/bin/bash
echo "--- INSTALLING DEPENDENCIES ---"
python -m pip install -r requirements.txt

echo "--- BUILDING STATIC FILES ---"
# O prefixo serve para garantir que ele usa o storage local durante o build
python manage.py collectstatic --noinput --clear --no-post-process

echo "--- RUNNING MIGRATIONS ---"
python manage.py migrate --noinput

echo "--- BUILD FINISHED ---"