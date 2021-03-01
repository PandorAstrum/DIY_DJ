FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

RUN adduser -D user
USER user