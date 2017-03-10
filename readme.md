# References
Django tutorial: http://www.tangowithdjango.com

# Docker
## Build image

```
docker build -t django:v1 .
```

## Run
Docker run container

```
docker run -it -v /home/eric/code/django_project/code:/code tango:v1 /bin/bash
```

Temporary workaround: Start django server

```
python /code/django_project/manage.py runserver 0.0.0.0:8000
```

Browse to your container, e.g. 172.17.0.2:8000


# Django
## Initial start
Create a django project inside your container /code dir:

```
django-admin.py startproject django_project
```


