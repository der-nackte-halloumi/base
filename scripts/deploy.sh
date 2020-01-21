#!/usr/bin/env bash

set -eo pipefail

chmod 400 der-nackte-halloumi-base-travis

echo $SERVER_PUBLIC_KEY >> $HOME/.ssh/known_hosts

# copy compose file to server
rsync --progress -e "ssh -i der-nackte-halloumi-base-travis" docker-compose.yml $SERVER_ADDRESS:.

# restart services
ssh -i der-nackte-halloumi-base-travis $SERVER_ADDRESS "docker-compose up --build -d"
