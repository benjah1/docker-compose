#!/bin/sh 
set -e

CASSANDRA_SEEDS=$(dig +short $(echo ${SEED} | tr "," "\n") | paste -sd "," -)

exec "/docker-entrypoint.sh $@"
