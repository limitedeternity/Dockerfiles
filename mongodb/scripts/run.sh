#!/bin/bash

# Initialize first run
if [[ -e /.firstrun ]]; then
    bash /scripts/first_run.sh
fi

# Start MongoDB
echo "Starting MongoDB..."
mongod --dbpath /data --bind_ip 0.0.0.0 --auth $@
