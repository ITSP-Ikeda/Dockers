FROM ruby:3.3.4

USER root
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /office_work
ENTRYPOINT ["/entrypoint.sh"]
WORKDIR /office_work
ADD Gemfile /office_work/Gemfile
ADD Gemfile.lock /office_work/Gemfile.lock
RUN bundle install
ADD . /office_work