#!/bin/bash
docker -v
RES=$?

if [ $RES -eq 0 ]; then
    echo "Docker is available."
else
    echo "Docker does not seem to be available."
    exit $RES
fi