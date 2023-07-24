#!/bin/bash

docker build -t soulteary/gpt-code-ui -f gpt-code-ui/Dockerfile.main . 

VERSION=$(cat gpt-code-ui/VERSION)
docker build -t "soulteary/gpt-code-ui:${VERSION}" --build-arg="VERSION=${VERSION}" -f gpt-code-ui/Dockerfile.tag . 
