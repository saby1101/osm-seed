#!/usr/bin/env bash
mkdir replication
echo "state_file: state.yaml" > config.yaml
echo "db: host=$POSTGRES_HOST dbname=$POSTGRES_DB user=$POSTGRES_USER password=$POSTGRES_PASSWORD" >> config.yaml
echo "data_dir: replication/" >>  config.yaml
./replicate_changesets.rb config.yaml