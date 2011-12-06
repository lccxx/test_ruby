#!/bin/bash
#	download latest Chromium-win32.zip

wget http://build.chromium.org/f/chromium/snapshots/chromium-rel-xp/LATEST
test -e LATEST.1
if [ "$?" = "0" ]; then
	rm -f LATEST
	mv LATEST.1 LATEST
fi;
latest=$(cat LATEST)
wget http://build.chromium.org/f/chromium/snapshots/chromium-rel-xp/$latest/chrome-win32.zip
test -e chrome-win32.zip.1
if [ "$?" = "0" ]; then
	rm -f chrome-win32.zip
	mv chrome-win32.zip.1 chrome-win32.zip
fi
