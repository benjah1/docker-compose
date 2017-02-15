#!/bin/sh
set -e

delay () {
	sleep $1;
	shift;
  "${@}";
}

if [ "$1" = 'slave' ]; then
	REHOST=$(nslookup tasks.redis localhost | grep Address | cut -d ' ' -f 3 | head -n 2 | tail -n 1)
	delay 10 redis-trib.rb add-node --slave $(hostname -i):6379 $REHOST:6379 &
fi

redis-server /usr/local/etc/redis/redis.conf
