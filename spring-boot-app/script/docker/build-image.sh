#!/bin/bash

# input example:
# sh build-image.sh  progress0407/app  local-mem  1

set -e
source ../color-echo.sh

SHELL_PATH=$(pwd)
CURRENT_PATH="$(dirname $0)"

DOCKER_IMAGE_NAME=${1-"progress0407/app"}
SPRING_PROFILE=${2:-"prod"}     #  default to 'prod' if no argument provided
SERVER_VERSION=${3:-"1"}        #  default is 1

DOCKER_FILE_PATH="app/BuildJarDockerfile"
DOCKER_CONTEXT_PATH="../.."

cd $CURRENT_PATH

# echo_blue "[ Building Docker image: $DOCKER_IMAGE_NAME ... ]"
docker build  \
  -t $DOCKER_IMAGE_NAME \
  --build-arg SPRING_PROFILE="$SPRING_PROFILE" \
  --build-arg SERVER_VERSION="$SERVER_VERSION" \
  -f $DOCKER_FILE_PATH  $DOCKER_CONTEXT_PATH



# 원래의 디렉터리로 돌아가지 않아도 정상 동작한다 ...
#   cd $SHELL_PATH
#   echo "NOW RETURN = $(pwd)"

  # --build-arg SERVER_VERSION="100" \