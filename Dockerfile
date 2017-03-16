FROM python:2.7
RUN mkdir /code
COPY . /code/
RUN cd /code/django/ && pip install -r requirements.txt
WORKDIR /code/django/projectname
CMD ["python","/code/django/projectname/manage.py","migrate"]
CMD ["python","/code/django/projectname/manage.py","runserver","0.0.0.0:8000"]
