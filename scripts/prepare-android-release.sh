#!/usr/bin/env bash
cd android
echo $PLAYSTORE_DEPLOY_KEY >> keys.json
ls | grep key
bundle install
bundle update fastlane
bundle exec fastlane set_build_code_internal
cd ..
