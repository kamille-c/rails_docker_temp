# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* install image   

```
$ docker pull ruby:2.5.3
$ docker pull mysql
```

* needed Dockerfile, Gemfile, Gemfile.lock and docker-compose.yml

```
#create new application
$ docker-compose run web rails new . --force --database=mysql --skip-bundle

# build
$ docker-compose build

# start docker
$ docker-compose up

# create db
$ docker-compose run web rails db:create
```

* often use commands

```
# start rails server
# this commands let us debug by binding.pry
$ docker-compose run --rm --service-ports web

# 基本的に `docker-compose run web bin/rails` 以降に普段使っているrails コマンドを使用すれば動きます
# generate something
$ docker-compose run web bin/rails g XXX

# migrate
$ docker-compose run web bin/rails db:migrate

# run rails console
$ docker-compose run web bin/rails c

# run rspce
$ docker-compose run web bin/rspec
```
