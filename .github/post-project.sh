#!/bin/bash
set -v
pwd
ls -lasth
cat composer.json
sleep 1

echo "start - attempting to fix up the composer repositories"
composer --version
composer config --unset repo.0
cat composer.json
sleep 1
composer config --unset repositories.0
cat composer.json
sleep 1
echo "asdfasdfads" >> composer.json
sleep 1
cat composer.json
echo "end -attempting to fix up the composer repositories"





set +v