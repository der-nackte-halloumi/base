# base

[![Build Status](https://travis-ci.com/der-nackte-halloumi/base.svg?branch=master)](https://travis-ci.com/der-nackte-halloumi/base)

## Environment

### Docker

At least **MacOS High Sierra** is required to run [Docker Desktop for Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac/).

Where there is no support for the latest _Docker_ release, the [Docker Toolbox](https://docs.docker.com/toolbox/overview/) might be helpful - but this is not covered by the following instructions.

## Setup

Pull the entire codebase including all submodules at once:

    git clone --recurse-submodules https://github.com/der-nackte-halloumi/base.git

Copy the `.env.sample`-file to `.env` and replace the values according to your desired local configuration.

You can now run all services in a development mode with docker-compose:

    cd base
    docker-compose -f docker-compose.yml -f docker-compose.development.yml up -d

> Note: The frontend needs to be run separately at the moment.

## Development

Setup your hostfile for local development:

    sudo sh -c 'echo "127.0.0.1  api.unpackaged.test" >> /etc/hosts'
