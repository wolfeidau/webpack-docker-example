#!/bin/sh

[ -z "${PORT}" ] && PORT=8080

webpack-dev-server \
-d --hot --inline --display-reasons --display-error-details --history-api-fallback --progress \
--colors --port ${PORT} --host 0.0.0.0 --public taco.local --output-public-path http://taco.local:${PORT}/
