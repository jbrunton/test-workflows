set -e

cd ./services/api
bundle install
bundle exec rspec
