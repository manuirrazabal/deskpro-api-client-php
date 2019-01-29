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
( find . -type d -name ".git" && find . -name ".gitignore" && find . -name ".gitmodules" ) | xargs rm -rf
zip -r deskpro.zip deskpro
