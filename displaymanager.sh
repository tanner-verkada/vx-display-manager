#!/bin/bash

curl -L -o /Users/verkada/DisplayManager-1.0.2.dmg https://github.com/univ-of-utah-marriott-library-apple/display_manager/releases/download/1.0.2/DisplayManager-1.0.2.dmg

hdiutil mount /Users/verkada/DisplayManager-1.0.2.dmg

installer -pkg /Volumes/Display\ Manager/DisplayManager-1.0.2.pkg -target /

/usr/local/bin/display_manager.py res 1920 1080

installer -pkg /Volumes/Display\ Manager/Uninstall.pkg -target /

hdiutil unmount /Volumes/Display\ Manager

rm -rf /Users/verkada/DisplayManager-1.0.2.dmg

killall Verkada

echo "All done"
