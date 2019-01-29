#!/usr/bin/env bash

rm -rf build/
mkdir -p build/deskpro
composer install --no-dev
mv vendor build/deskpro/
cp -R src build/deskpro/
cp composer.json build/deskpro/
cp build-extra/include.php build/deskpro/
cp build-extra/README.md build/deskpro/
cd build
zip -r deskpro.zip deskpro
