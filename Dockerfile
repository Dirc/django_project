FROM python:2.7
MAINTAINER Dirc

ENV PYTHONPATH /usr/local/lib/python2.7/site-packages/
#ENV PYTHONPATH $PYTHONPATH:/usr/local/lib/python2.7/site-packages/

# Update setuptools
RUN pip install -U pip setuptools

RUN pip install -U django==1.7
RUN pip install pillow

EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
# Browse to your container, e.g. 172.17.0.2:8000

