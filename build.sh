#!/bin/bash



echo "build start"

python3.9 -m -pip install -r requirements.txt

echo "migrations start"
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput
echo "migrations end"

python3.9 manage.py collectstatic --noinput --clear
echo "build end"

