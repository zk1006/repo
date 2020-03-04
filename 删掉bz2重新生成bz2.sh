#!/bin/sh

dpkg-scanpackages -m ./debs > Packages
rm -rf /Users/zk/tools/repo/Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages
