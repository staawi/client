#!/usr/bin/env bash

# generate a temporary signing key adn apply its configuration
cd android
KEYFILE="$(pwd)/key.jks"
echo "Generating signing configuration with $KEYFILE..."
keytool -genkey -keyalg RSA -alias key -keysize 4096 -dname "cn=Stawi CI, ou=Head of bad integration tests, o=Stawi HQ, c=TLH" -keypass FLUFFYCHAT -storepass FLUFFYCHAT -validity 1 -keystore "$KEYFILE" -storetype "pkcs12"
echo "storePassword=FLUFFYCHAT" >> key.properties
echo "keyPassword=FLUFFYCHAT" >> key.properties
echo "keyAlias=key" >> key.properties
echo "storeFile=$KEYFILE" >> key.properties
ls | grep key
cd ..

# build release mode APK
flutter pub get
flutter build apk --release

# install and launch APK
flutter install
adb shell am start -n im.stawi/im.stawi.app.MainActivity

sleep 5

# check whether Stawi runs
adb shell ps | awk '{print $9}' | grep im.stawi
