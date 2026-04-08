# build.sh
pip install -r requirements.txt
python manage.py migrate --noinput
python manage.py collectstatic --noinput

# Criar superuser se não existir
python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'freitas.joao2000@email.com', 'senha1') if not User.objects.filter(username='admin').exists() else None"