#!/bin/bash

# Install Go
GO_VERSION="1.14.4"
curl "https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz" | sudo tar -C /usr/local -xz
