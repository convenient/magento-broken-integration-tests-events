#!/bin/bash
set -ev

sed -i 's/protected \$dumpDb = true;/protected \$dumpDb = false;/' $MAGENTO_ROOT/dev/tests/integration/framework/Magento/TestFramework/Application.php

grep dumpDb $MAGENTO_ROOT/dev/tests/integration/framework/Magento/TestFramework/Application.php