FROM ruby:3.3.8

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libmysqlclient-dev \
    nodejs \
    yarn \
    libpq-dev \
    default-mysql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --without development test

COPY . .

RUN RAILS_ENV=production bundle exec rails assets:precompile

ENTRYPOINT ["./init.sh"]
