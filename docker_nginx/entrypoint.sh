#!/bin/sh
envsubst < /tmp/template > /config
exec "$@"
