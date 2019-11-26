#!/bin/bash
export VERSION=0.1.0
export DOCKERHUB_USER=nickmaccarthy
export CONTAINER_NAME=devops-runner

#echo ">>> BUILDING IMAGE $CONTAINER_NAME:$VERSION <<<"
#docker build -t $CONTAINER_NAME:$VERSION .
#echo ">>> TAGGING IMAGE $CONTAINER_NAME:$VERSION <<<"
#docker tag $CONTAINER_NAME:$VERSION $DOCKERHUB_USER/$CONTAINER_NAME:$VERSION
echo ">>> PUSHING $CONTAINER_NAME:$VERSION TO DOCKERHUB <<<"
docker push $DOCKERHUB_USER/$CONTAINER_NAME:$VERSION