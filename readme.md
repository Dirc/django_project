# References
Django tutorial: http://www.tangowithdjango.com

# Docker
## Build image
docker build -t django:v1 .
## Run
docker run -it -v /home/eric/code/django_project/code:/code tango:v1 /bin/bash

# Django
## Start
Create a django project inside your container /code dir:

```
django-admin.py startproject django_project
```

