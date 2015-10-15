#!/usr/bin/env bash

# Installed using godeb
# Source: https://github.com/niemeyer/godeb
# Future: https://github.com/travis-ci/gimme
wget -O - --no-check-certificate "https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz" | tar -xvzf - && ./godeb install