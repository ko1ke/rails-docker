FROM ruby:2.6.3

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn build-essential libpq-dev
# default-mysql-client 

RUN mkdir /app
# 以降の RUN, CMD コマンドで使われる作業ディレクトリを指定する
WORKDIR /app
# コピー
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
# コマンド実行
RUN bundle install -j4 
# カレントディレクトリにある資産をコンテナ上の ｢/app｣ ディレクトリにコピーする
ADD . /app

EXPOSE 3000
