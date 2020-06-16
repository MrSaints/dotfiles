#!/bin/bash

npm config set init.author.name "Ian L."
npm config set init.author.email "os@fyianlai.com"
npm config set init.author.url "https://www.fyianlai.com/"
npm config set init.license MIT

# Verify npm account
npm adduser

# Install useful npm globals
npm install -g yarn
