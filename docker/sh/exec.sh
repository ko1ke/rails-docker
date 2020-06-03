#!bin/bash
docker-compose build
docker-compose run app rails new . --force --no-deps --database=mysql --skip-test --webpacker
echo "gem 'unicorn'" >> .Gemfile
docker-compose run app bundle install -j4