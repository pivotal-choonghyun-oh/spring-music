#!/bin/sh

VERSION=`cat version/number`
LAST_FILE_NAME=`ls release/*${VERSION}*`

ls -lR

CF_DEPLOY_FILE=spring-music.jar

mkdir cf-out

cp ${LAST_FILE_NAME} cf-out/${CF_DEPLOY_FILE}
