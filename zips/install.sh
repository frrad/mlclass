#!/bin/sh

version=005

unzip mlclass-ex\*
mv mlclass-ex*/* .
rm -rf mlclass-ex?-$version
mv ex*.pdf ..
mv mlclass-ex? ..
rm -rf __MACOSX/

echo $version
