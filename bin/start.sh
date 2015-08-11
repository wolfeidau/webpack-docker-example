#!/bin/sh

[ -z "${PORT}" ] && PORT=8080
[ -z "${DOCKER_IP}" ] && DOCKER_IP="boot2docker.local"

webpack-dev-server \
-d --hot --inline --display-reasons --display-error-details --history-api-fallback --progress \
--colors --port ${PORT} --host 0.0.0.0 --public ${DOCKER_IP} --output-public-path http://${DOCKER_IP}:${PORT}/
