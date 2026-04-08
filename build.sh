# build.sh
pip install -r requirements.txt
python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'freitas.joao2000@email.com', 'senha1') if not User.objects.filter(username='admin').exists() else None"
python3.12 manage.py collectstatic --noinput
python3.12 manage.py migrate