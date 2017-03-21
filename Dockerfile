FROM python:2.7
RUN mkdir /code
COPY . /code/
RUN cd /code && pip install -r requirements.txt
WORKDIR /code/projectname
CMD ["python","/code/projectname/manage.py","migrate"]
CMD ["python","/code/projectname/manage.py","runserver","0.0.0.0:9000"]
