#!/bin/bash
set -ev
pwd
ls -lasth

grep dumpDb $MAGENTO_ROOT/dev/tests/integration/framework/Magento/TestFramework/Application.php

sed -i 's/protected \$dumpDb = true;/protected \$dumpDb = false;/' path/to/file.php

grep dumpDb $MAGENTO_ROOT/dev/tests/integration/framework/Magento/TestFramework/Application.php