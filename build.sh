#!/bin/bash
echo "--- INSTALLING DEPENDENCIES ---"
python -m pip install -r requirements.txt

echo "--- BUILDING STATIC FILES ---"
# O --no-post-process é a rede de segurança final
python manage.py collectstatic --noinput --clear --no-post-process

echo "--- RUNNING MIGRATIONS ---"
python manage.py migrate --noinput

echo "--- BUILD FINISHED ---"