#!/bin/bash
set -v
pwd
ls -lasth
cat composer.json

jq '.repositories' composer.json
# https://github.com/composer/composer/issues/12623#issuecomment-3551953185
composer config --unset repositories


set +v