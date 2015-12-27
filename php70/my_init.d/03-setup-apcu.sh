#!/bin/bash

echo "================================"
echo "==> APCU"
echo "================================"

# Only enable when env variable defined as "true"
if [ $PHP_APCU_ENABLED = "false" ] || [ $PHP_APCU_ENABLED = "False" ] ; then
    echo "==> Disabling"
    phpdismod -v 7.0 apcu
else
    echo "==> Enabling"
    phpenmod -v 7.0 apcu
fi

