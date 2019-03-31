#!/bin/sh
bzip2 -c9k ./Packages > ./Packages.bz2
printf "Origin: NiceAuto IOS Repo 8.0\nLabel: NiceAuto IOS Repo 8.0\nSuite: stable\nVersion: 1.0\nCodename: ios\nArchitecture: iphoneos-arm\nComponents: main\nDescription: NiceAuto iOS for Device Model 10.x - 11.4.1\nMD5Sum:\n "$(cat ./Packages | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages)" Packages\n "$(cat ./Packages.bz2 | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.bz2)" Packages.bz2\n" >Release;
exit 0
