# Stawi AppImage

Stawi is provided as AppImage too. To Download, visit stawi.im.

## Building

- Ensure you install `appimagetool`

```shell
flutter build linux

# copy binaries to appimage dir
cp -r build/linux/{x64,arm64}/release/bundle appimage/Stawi.AppDir
cd appimage

# prepare AppImage files
cp Stawi.desktop Stawi.AppDir/
mkdir -p Stawi.AppDir/usr/share/icons
cp ../assets/logo.svg Stawi.AppDir/stawi.svg
cp AppRun Stawi.AppDir

# build the AppImage
appimagetool Stawi.AppDir
```
