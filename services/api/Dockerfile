FROM ruby:2.7-alpine

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install -j 8

COPY . /app

CMD [ "ruby", "/app/run.rb" ]
