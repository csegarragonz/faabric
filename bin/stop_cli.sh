#!/bin/bash

set -e

THIS_DIR=$(dirname $(readlink -f $0))
PROJ_ROOT=${THIS_DIR}/..

pushd ${PROJ_ROOT} > /dev/null

echo "Stopping Faabric CLI"
docker-compose -p faabric-dev -f docker/docker-compose-cli.yml stop

popd > /dev/null
