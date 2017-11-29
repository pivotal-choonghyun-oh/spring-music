#!/bin/sh

VERSION=`cat version/number`

wget ftp://ftpuser:ftpuser@192.168.219.102/m2-cache.tar.gz

tar zxvf ./m2-cache.tar.gz -C ~

cd spring-music-src

echo "New version num : $VERSION ..."

pwd
ls -l

./gradlew assemble

echo "-------"

cd ..
mkdir build-out

cp spring-music-src/build/libs/spring-music.jar build-out/spring-music-${VERSION}.jar



