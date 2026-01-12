#!/bin/bash
set -v
pwd
ls -lasth
cat composer.json

echo "start - attempting to fix up the composer repositories"
composer --version
composer config --unset repo.0
cat composer.json
composer config --unset repositories.0
cat composer.json
echo "end -attempting to fix up the composer repositories"

set +v