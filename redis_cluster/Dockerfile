FROM redis:3.2.7-alpine

RUN wget http://download.redis.io/redis-stable/src/redis-trib.rb && \
		mv redis-trib.rb /usr/local/bin/ && \
		chmod a+x /usr/local/bin/redis-trib.rb && \
		apk update && \
		apk add ruby && \
		gem install redis --no-document

COPY entrypoint.sh /usr/local/bin/
COPY redis.conf /usr/local/etc/redis/redis.conf

RUN chmod a+x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
