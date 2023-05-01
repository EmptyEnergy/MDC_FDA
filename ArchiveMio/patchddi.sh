#!/bin/bash
# run as root
set -e
rm DeveloperDiskImageModified_16* || true
hdiutil convert -format UDRW -o DeveloperDiskImageModified_15.6.dmg /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport/15.6/DeveloperDiskImage.dmg
hdiutil attach -owners on DeveloperDiskImageModified_15.6.dmg
for i in com.apple.debugserver.plist
do
	cp $i /Volumes/DeveloperDiskImage/Library/LaunchDaemons/
	chown root:wheel /Volumes/DeveloperDiskImage/Library/LaunchDaemons/$i
	chmod 644 /Volumes/DeveloperDiskImage/Library/LaunchDaemons/$i
done
for i in com.apple.ps.plist
do
        ln -s ../../../bin/ps /Volumes/DeveloperDiskImage/usr/bin/
	cp $i /Volumes/DeveloperDiskImage/Library/LaunchDaemons/
        chown root:wheel /Volumes/DeveloperDiskImage/Library/LaunchDaemons/$i
        chmod 644 /Volumes/DeveloperDiskImage/Library/LaunchDaemons/$i
done
for i in com.nathan.test.plist
do
#        cp -r /Users/nathan/Downloads/FileTroller.app /Volumes/DeveloperDiskImage/Applications/
        ln -s ../../../var/containers/Bundle/Application/6583DC24-F30F-41A1-96C5-6B41C9E86EEF/FileTroller.app/FileTroller /Volumes/DeveloperDiskImage/usr/bin/
        cp $i /Volumes/DeveloperDiskImage/Library/LaunchDaemons/
        chown root:wheel /Volumes/DeveloperDiskImage/Library/LaunchDaemons/$i
        chmod 644 /Volumes/DeveloperDiskImage/Library/LaunchDaemons/$i
done
hdiutil detach /Volumes/DeveloperDiskImage