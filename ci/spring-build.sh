#!/bin/sh

VERSION=`cat version/number`

#wget ftp://ftpuser:ftpuser@192.168.219.102/m2-cache.tar.gz
#tar zxf ./m2-cache.tar.gz -C ~

wget ftp://ftpuser:ftpuser@192.168.219.102/gradle-cache.tgz
tar zxf ./gradle-cache.tgz -C ~

cd spring-music-src

echo "New version num : $VERSION ..."

pwd
ls -l

./gradlew clean build

echo "-------"

cd ..
mkdir build-out

cp spring-music-src/build/libs/spring-music.jar build-out/spring-music-${VERSION}.jar


