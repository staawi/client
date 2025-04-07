#!/bin/sh -ve

OLM_VERSION=$(grep flutter_olm pubspec.yaml | sed -E 's/.*flutter_olm:[[:space:]]*["^]?([^"]*)["]?/\1/')
DOWNLOAD_PATH="https://github.com/famedly/olm/releases/download/v$OLM_VERSION/olm.zip"
echo $DOWNLOAD_PATH

mkdir -p assets/js && cd assets/js/

curl -L $DOWNLOAD_PATH > olm.zip
unzip olm.zip && rm olm.zip
rm -rf ./package && mv javascript package
cd ../../
