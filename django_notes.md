# Django
## Create Django project
Create a django project inside your container /code dir:

```
cd /code
/django-admin.py startproject django_project
```

## Create app inside project
A project can consist of multiple modular apps.

```
cd /code/django_project
python manage.py startapp rango
```

### Add app to project
Add 'rango' app to INSTALLED_APPS in settings.py
Add rango uri (and rango.urls) to urls.py

```
urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^rango/', include('rango.urls')), # ADD THIS NEW TUPLE!
)
```

### Add app view + url
In rango/views.py add

```
from django.http import HttpResponse
def index(request):
    return HttpResponse("Babe! Want to see what this is all <a href='/rango/about'>About</a>")
def about(request):
    return HttpResponse("This page is about <br/> Back to <a href='/rango/'>Start</a>")
```    

In rango/urls.py add

```
from django.conf.urls import patterns, url
from rango import views

urlpatterns = patterns('',
        url(r'^$', views.index, name='index'),
        url(r'^about/', views.about, name='about')
)
```
