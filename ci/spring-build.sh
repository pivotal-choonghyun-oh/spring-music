#!/bin/sh

VERSION=`cat version/number`
cd spring-music-src

echo "New version num : $VERSION ..."

pwd
ls -la

./gradlew assemble

echo "-------"

cd ..
mkdir build-out

cp spring-music-src/build/libs/spring-music.jar build-out/spring-music-${VERSION}.jar

ls -lR


