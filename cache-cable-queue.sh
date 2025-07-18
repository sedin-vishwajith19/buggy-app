#!/bin/bash
set -e

bin/rails db:create
bin/rails db:migrate

RAILS_ENV=production bin/rails db:create:cache
RAILS_ENV=production bin/rails db:migrate:cache

RAILS_ENV=production bin/rails db:create:cable
RAILS_ENV=production bin/rails db:migrate:cable

RAILS_ENV=production bin/rails db:create:queue
RAILS_ENV=production bin/rails db:migrate:queue

exec "$@"
