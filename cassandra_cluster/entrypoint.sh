#!/bin/sh 
set -e

CASSANDRA_SEEDS=$(dig +short $(echo ${SEED} | tr "," "\n") | paste -sd "," -)
sed -ri 's/(- seeds:).*/\1 "'"$CASSANDRA_SEEDS"'"/' "$CASSANDRA_CONFIG/cassandra.yaml"

bash -x /docker-entrypoint.sh $@
