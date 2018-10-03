#!/usr/bin/env bash

curl -sL -o ~/bin/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
chmod +x ~/bin/gimme

# Add to shell config:
# source ~/.gimme/envs/latest.env

eval "$(gimme stable)"

go get -u github.com/golang/dep/cmd/dep
go get -u golang.org/x/tools/cmd/guru
