#!/bin/bash

if ! type "go" > /dev/null; then
    echo "Go is not installed. Manually install: https://golang.org/doc/install"
    exit 1
fi

go get -d -v golang.org/x/tools/cmd/guru
