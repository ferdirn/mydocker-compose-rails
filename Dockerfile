FROM ruby:2.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client-9.4
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp

