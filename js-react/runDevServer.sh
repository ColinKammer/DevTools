#!/bin/bash
appName="my-react-app"
dockerContainer="node:18-alpine"

docker run -it --volume $(pwd):/hostPwd -w /hostPwd/$appName -p 127.0.0.1:3000:3000/tcp $dockerContainer npm start
