#!/bin/bash
dpkg-deb -b ./debs/com.rpetrich.rocketbootstrap_1.0.10_beta1.deb

dpkg-scanpackages -m ./ /dev/null | gzip > Packages.gz;

dpkg-scanpackages -m ./ /dev/null | bzip2 > Packages.bz2;

dpkg-scanpackages -m ./ /dev/null > Packages;
