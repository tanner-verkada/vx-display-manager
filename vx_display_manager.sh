#!/bin/bash

curl -o /Users/verkada/DisplayManager-1.0.2.dmg https://github.com/univ-of-utah-marriott-library-apple/display_manager/releases/download/1.0.2/DisplayManager-1.0.2.dmg

sleep 1

hdiutil mount /Users/verkada/DisplayManager-1.0.2.dmg

sleep 1

installer -pkg /Volumes/Display\ Manager/DisplayManager-1.0.2.pkg -target /

sleep 1

display_manager.py res 1920 1080

sleep 1

installer -pkg /Volumes/Display\ Manager/Uninstall.pkg -target /

sleep 1

hdiutil unmount /Volumes/Display\ Manager
