# base

[![Build Status](https://travis-ci.com/der-nackte-halloumi/base.svg?branch=master)](https://travis-ci.com/der-nackte-halloumi/base)

## Setup

Pull the entire codebase including all submodules at once:

    git clone --recurse-submodules git@github.com:der-nackte-halloumi/base.git

Copy the `.env.dist`-file to `.env` and replace the values according to your desired local configuration.

You can now run all services in a development mode with docker-compose:

    docker-compose -f docker-compose.yml -f docker-compose.development.yml up -d

> Note: The frontend needs to be run separately at the moment.

## Development

Setup your hostfile for local development:

    sudo sh -c 'echo "127.0.0.1  api.unpackaged.test" >> /etc/hosts'
