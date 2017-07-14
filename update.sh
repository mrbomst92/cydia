#!/bin/sh
apt-ftparchive packages ./ > ./Packages
bzip2 -c9k ./Packages > ./Packages.bz2
printf "Origin: julioverne's Repo\nLabel: julioverne\nSuite: stable\nVersion: 1.0\nCodename: julioverne\nArchitecture: iphoneos-arm\nComponents: main\nDescription: julioverne's Tweaks\nMD5Sum:\n "$(cat ./Packages | md5sum | cut -d ' ' -f 1)" Packages\n "$(cat ./Packages.bz2 | md5sum | cut -d ' ' -f 1)" Packages.bz2\n" >Release;
exit 0