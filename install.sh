#!/usr/bin/env bash

# Script written by @anatolethien

if [ -z "$1" ]; then
  theme="main"
else
  theme="$1"
fi

curl -sSL "https://raw.githubusercontent.com/anatolethien/bare-prompt/master/themes/bare-prompt-$theme.sh" >> ~/.bashrc
source ~/.bashrc
