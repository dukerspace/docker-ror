FROM ruby:2.3.3
LABEL author="Montol Saklor"
LABEL maintainer="montolsaklor@gmail.com"
LABEL build_date="2018-10-05"
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /var/www
COPY ./app/Gemfile /var/www/Gemfile
COPY ./app/Gemfile.lock /var/www/Gemfile.lock
RUN bundle install