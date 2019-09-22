FROM python:3.7-alpine3.9 as main

FROM main as pythonbuild

ENV PYTHONUNBUFFERED = 1
ENV PYTHONDONTWRITEBYTECODE = 1

RUN mkdir /install
WORKDIR /install
COPY requierments_development.txt .

RUN apk update && apk add --no-cache --virtual \
  build-deps gcc python3-dev musl-dev postgresql-dev && \
  pip install --install-option="--prefix=/install" \
  -r requierments_development.txt && \
  apk del build-deps python3-dev gcc musl-dev postgresql-dev
