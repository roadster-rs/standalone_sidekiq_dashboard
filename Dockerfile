FROM ruby:3.3-alpine

ENV BUNDLER_VERSION=2.5.4

RUN gem install bundler -v 2.5.4

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle check || bundle install

COPY . ./

ENTRYPOINT ["bundle", "exec", "rackup", "sidekiq_web.ru", "-o", "0.0.0.0", "-p", "9292"]
