#!/usr/bin/env bash

set -eo pipefail

echo $SERVER_PUBLIC_KEY >> $HOME/.ssh/known_hosts

# copy compose file to server
rsync --progress -e "ssh -i $HOME/.ssh/der-nackte-halloumi-base-travis" docker-compose.yml $SERVER_ADDRESS:.

# restart services
ssh -i $HOME/.ssh/der-nackte-halloumi-base-travis $SERVER_ADDRESS "docker-compose up --build -d"
