#!/bin/bash
echo "--- INSTALLING DEPENDENCIES ---"
python -m pip install -r requirements.txt

echo "--- BUILDING STATIC FILES ---"
python manage.py collectstatic --noinput --clear --no-post-process

echo "--- RUNNING MIGRATIONS ---"
python manage.py migrate --noinput

echo "--- BUILD FINISHED ---"