#!/bin/sh

version=005

md5sum --check --status checksums-$version
if [ $? -eq 0 ]; then
  unzip mlclass-ex\*
  mv mlclass-ex*/* .
  rm -rf mlclass-ex?-$version
  mv ex*.pdf ..
  mv mlclass-ex? ..
  rm -rf __MACOSX/
else
  echo 'checksum fail, aborting'
fi

