# References
Django tutorial: http://www.tangowithdjango.com

# Docker
## Build image

```
docker build -t django:v1 .
```

## Run

```
docker run -it -v /home/eric/code/django_project/code:/code tango:v1 /bin/bash
```

# Django
## Start
Create a django project inside your container /code dir:

```
django-admin.py startproject django_project
cd django_project
python manage.py runserver 0.0.0.0:8000
```
Browse to your container, e.g. 172.17.0.2:8000

