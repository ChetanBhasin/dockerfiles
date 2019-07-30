#!/bin/sh

java -jar /var/opt/swagger-codegen.jar generate -i "$@" -l openapi
redoc-cli bundle -o index.html openapi.json
