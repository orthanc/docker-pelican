FROM python:3-alpine

RUN \
  adduser -D -u 1010 appuser && \
  mkdir /work && \
  chown appuser:appuser /work && \
  touch /etc/profile && \
  chmod 666 /etc/profile && \
  true

COPY pelican-plugins /pelican-plugins

COPY requirements.txt ./
RUN pip install -r requirements.txt

WORKDIR /work
USER appuser
