#!/usr/bin/env bash
set -o errexit

export NODE_OPTIONS=--openssl-legacy-provider
bundle install
bundle exec rails webpacker:install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
