#!/bin/bash

mv _config.yml _config.remote
mv _config.local _config.yml

bundle exec jekyll serve

cp _site/feed.xml .

mv _config.yml _config.local
mv _config.remote _config.yml
