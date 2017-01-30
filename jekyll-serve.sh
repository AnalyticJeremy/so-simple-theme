#!/bin/bash

if [ -f "_config.local" ]
then
  mv _config.yml _config.remote
  mv _config.local _config.yml
fi

bundle exec jekyll serve

