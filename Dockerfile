FROM python
WORKDIR /django-test
COPY requirements.txt . 
RUN ["pip install -r requirements.txt"]

COPY . .
EXPOSE 8000
CMD ["python","manage.py","runserver"]