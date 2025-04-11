#!/usr/bin/env bash
# Exit on first error
set -o errexit

# Instala las dependencias desde requirements.txt
pip install -r requirements.txt

# Recolecta los archivos estáticos
python manage.py collectstatic --no-input

# Aplica las migraciones pendientes de la base de datos
python manage.py migrate