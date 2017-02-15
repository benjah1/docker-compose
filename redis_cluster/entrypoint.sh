#!/bin/sh
set -e

delay () {
	sleep $1;
	shift;
  "${@}";
}

if [ "$1" = 'init' ]; then
	delay 10 redis-trib.rb add-node --slave $(hostname -i):6379 $2:6379 &
fi

redis-server /usr/local/etc/redis/redis.conf
