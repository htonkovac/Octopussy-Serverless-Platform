#!/bin/bash
LAMBDA_NAME=secondlambda

docker build -t  $LAMBDA_NAME --build-arg lambda_name=$LAMBDA_NAME  -f BaseNodeImageDockerfile .
docker run -ti -e LAMBDA_NAME=$LAMBDA_NAME -p 8080:80 $LAMBDA_NAME /bin/bash
