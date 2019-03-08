FROM python:alpine3.6

RUN apk update && apk add make git
RUN pip install --upgrade pip
RUN pip install sphinx sphinx-rtd-theme

