#!/usr/bin/env bash

set -eo pipefail

chmod 400 der-nackte-halloumi-base-travis

echo $SERVER_PUBLIC_KEY >> $HOME/.ssh/known_hosts

echo ">>> transfer docker-compose.yml to server"
rsync --progress -e "ssh -i der-nackte-halloumi-base-travis" docker-compose.yml $SERVER_ADDRESS:.

echo ">>> restart services to apply new config"
ssh -i der-nackte-halloumi-base-travis $SERVER_ADDRESS "docker-compose pull && docker-compose up --build -d"
