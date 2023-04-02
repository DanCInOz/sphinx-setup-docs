#!/bin/sh

pip3 install -v -r docker/requirements.txt

exec "$@"