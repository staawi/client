#!/bin/sh -ve

sudo apt install -y yq tr
OLM_VERSION=$(cat pubspec.yaml | yq .dependencies.flutter_olm | tr -d '"^')
DOWNLOAD_PATH="https://github.com/famedly/olm/releases/download/v$OLM_VERSION/olm.zip"
echo $DOWNLOAD_PATH

mkdir -p assets/js && cd assets/js/

curl -L $DOWNLOAD_PATH > olm.zip
unzip olm.zip && rm olm.zip
rm -rf ./package && mv javascript package
cd ../../
