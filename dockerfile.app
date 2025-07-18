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

ENTRYPOINT ["./cache-cable-queue.sh"]

CMD ["bash", "-c", "RAILS_ENV=production bundle exec puma -C config/puma.rb"]
