#!/bin/sh
set -e

delay () {
	sleep $1;
	shift;
  "${@}";
}

if [ "$1" = 'slave' ]; then
	delay 10 redis-trib.rb add-node --slave $(hostname -i):$2 $3 &
fi

redis-server /usr/local/etc/redis/redis.conf
