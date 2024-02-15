#!/bin/sh

set -eu

curl -sL https://raw.githubusercontent.com/cbuschka/tfvm/main/install.sh -o - | bash

if command tfvm > /dev/null 2>&1; then
    tfvm install
else
    echo "tfvm not found"
    exit 1
fi
