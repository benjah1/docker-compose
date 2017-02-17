#!/bin/sh -x
set -e

export CASSANDRA_SEEDS=$(dig +short $(echo ${SEED} | tr "," "\n") | paste -sd "," -)

bash -x /docker-entrypoint.sh $@
