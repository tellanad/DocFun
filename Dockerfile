FROM python:3.9.0a5-alpine3.10
MAINTAINER KingsManTellanad

ENV PYTHONBUFFERED 1

COPY ./requirements.txt/ /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user