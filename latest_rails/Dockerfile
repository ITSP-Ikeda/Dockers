FROM ruby:3.3.4

USER root
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /latest_rails
WORKDIR /latest_rails
ADD Gemfile /latest_rails/Gemfile
ADD Gemfile.lock /latest_rails/Gemfile.lock
RUN bundle install
ADD . /latest_rails