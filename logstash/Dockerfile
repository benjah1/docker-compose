FROM logstash:5.1.2-alpine

MAINTAINER Benjah1 <benjaminhuang1@gmail.com>

RUN logstash-plugin update logstash-input-s3

USER logstash

COPY . /app/logstash
