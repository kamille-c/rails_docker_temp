FROM ruby:2.5.3

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# ワーキングディレクトリの設定
WORKDIR /myapp

# gemfileを追加する
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# gemfileのinstall
RUN bundle install
COPY . /myapp

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
