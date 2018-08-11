# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* install image   

```
$ docker pull ruby:2.5.0
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

* check localhost:3000

* other infomations

```
# stop containers
$ docker-compose down

# start rails console
$ docker-compose run web rails dbconsole

# generate something(like controllers, models...)
$ docker-compose run web rails generate XXX
```
