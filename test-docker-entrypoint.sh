#!/bin/sh

set -e

echo "ENVIRONMENT: $RAILS_ENV"

#check bundle
bundle check || bundle install --jobs 20 --retry 5

#run anything by prepending bundle exec to the passed command

bundle exec ${@}
