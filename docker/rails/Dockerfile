FROM ruby:2.6.3

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn default-mysql-client build-essential

RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install -j4 
ADD . /app

EXPOSE 3000
