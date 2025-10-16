#!/bin/bash
set -ev
pwd
ls -lasth

sed -i 's/protected \$dumpDb = true;/protected \$dumpDb = false;/' $MAGENTO_ROOT/dev/tests/integration/framework/Magento/TestFramework/Application.php

grep dumpDb $MAGENTO_ROOT/dev/tests/integration/framework/Magento/TestFramework/Application.php