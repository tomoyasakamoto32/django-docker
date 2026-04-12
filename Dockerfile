FROM python:3.14-alpine@sha256:6f873e340e6786787a632c919ecfb1d2301eb33ccfbe9f0d0add16cbc0892116

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/
