FROM python:3.10.2-alpine
LABEL key="sebenitezg@outlook.com"

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app 
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
