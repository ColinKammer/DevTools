#!/bin/bash
appName="my-react-app"
dockerContainer="node:18-alpine"

#docker run --volume $(pwd):/hostPwd -w /hostPwd $dockerContainer touch hello.txt
docker run --volume $(pwd):/hostPwd -w /hostPwd $dockerContainer npx create-react-app $appName
