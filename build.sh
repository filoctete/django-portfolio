# build.sh
pip install -r requirements.txt

# Forçar a criação da pasta de estáticos
mkdir -p staticfiles

python manage.py collectstatic --noinput
python manage.py migrate --noinput

# Criar superuser (admin/senha1)
python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'freitas.joao2000@email.com', 'senha1') if not User.objects.filter(username='admin').exists() else None"