#!/bin/sh 
set -e

CASSANDRA_SEEDS=$(dig +short $(echo ${SEED} | tr "," "\n") | paste -sd "," -)

bash -x /docker-entrypoint.sh $@
