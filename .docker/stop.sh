#!/bin/bash

# get our arguments
POSITIONAL=()
COMMANDS=()
os="$(uname -s)"
if [ ${os} = "Linux" ]; then
    echo "Linux OS detected"
    SCRIPT_DIR=$(dirname $(readlink -f $0))
elif [ ${os} = "Darwin" ]; then
    echo "MacOS detected"
    SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd)
fi
ROOT_DIR=$(realpath "${SCRIPT_DIR}/..")

cd "${SCRIPT_DIR}" && HOST_PATH="${ROOT_DIR}/" docker-compose -f "${SCRIPT_DIR}/docker-compose.yml" down