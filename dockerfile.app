FROM 156916773321.dkr.ecr.ap-south-1.amazonaws.com/ubuntu:latest

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libmariadb-dev \
    libmariadb-dev-compat \
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
