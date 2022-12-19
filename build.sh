#!/bin/bash



echo "build start"

python3.9 -m -pip install -r requirements.txt
python3.9 manage.py makemigrations
python3.9 manage.py migrate --noinput
python3.9 manage.py collectstatic --noinput --clear
echo "build end"

