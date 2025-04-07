#!/bin/sh -ve

if [ -d "flutter" ]; then
    echo "Updating Flutter..."
    export PATH="$(pwd)/flutter/bin:$PATH"
    flutter upgrade
else
    echo "Cloning Flutter..."
    git clone https://github.com/flutter/flutter.git --branch stable
    export PATH="$(pwd)/flutter/bin:$PATH"
    flutter doctor
fi

export PATH="$(pwd)/flutter/bin:$PATH"

flutter doctor
flutter clean
flutter config --enable-web
flutter pub get
flutter build web --dart-define=FLUTTER_WEB_CANVASKIT_URL=canvaskit/ --release --source-maps

