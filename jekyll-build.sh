#!/bin/bash

if [ -f "_config.remote" ]
then
  mv _config.yml _config.local
  mv _config.remote _config.yml
fi

bundle exec jekyll build

cp _site/feed.xml .

