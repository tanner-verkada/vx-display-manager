#!/bin/bash

curl -o DisplayManager-1.0.2.dmg https://github.com/univ-of-utah-marriott-library-apple/display_manager/releases/download/1.0.2/DisplayManager-1.0.2.dmg

sleep 1

hdiutil mount DisplayManager-1.0.2.dmg

sleep 1

installer -pkg /Volumes/Display\ Manager/DisplayManager-1.0.2.pkg -target /

sleep 1

display_manager.py res 2048 1280

sleep 2

installer -pkg /Volumes/Display\ Manager/Uninstall.pkg -target /

sleep 1

hdiutil unmount /Volumes/Display\ Manager
