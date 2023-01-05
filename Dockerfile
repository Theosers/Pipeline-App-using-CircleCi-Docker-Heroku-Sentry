FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN flake8 --ignore=E303,E501,E302,E241,W292,F811,F841
RUN python manage.py migrate
RUN python manage.py loaddata datadump.json
RUN python manage.py runserver 0.0.0.0:8000'
EXPOSE 8000