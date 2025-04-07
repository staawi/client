#!/usr/bin/env bash
cd android
echo $UPLOAD_SIGNING_KEY | base64 --decode --ignore-garbage > key.jks
echo "storePassword=${UPLOAD_SIGNING_KEY_PASS}" >> key.properties
echo "keyPassword=${UPLOAD_SIGNING_KEY_PASS}" >> key.properties
echo "keyAlias=upload" >> key.properties
echo "storeFile=../key.jks" >> key.properties
echo $PLAYSTORE_DEPLOY_KEY >> keys.json
ls | grep key
bundle install
bundle update fastlane
bundle exec fastlane set_build_code_internal
cd ..
