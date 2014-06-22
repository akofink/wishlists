[![Build Status](https://travis-ci.org/akofink/wishlists.svg)](https://travis-ci.org/akofink/wishlists)
[![Code Climate](https://codeclimate.com/github/akofink/wishlists.png)](https://codeclimate.com/github/akofink/wishlists)
[![Coverage Status](https://coveralls.io/repos/akofink/wishlists/badge.png)](https://coveralls.io/r/akofink/wishlists)

# akWishlists
A Wish List Site for Gift Buying Collaboration

## Ruby version
ruby-2.1.0.p0

## System dependencies

#### Postgresql

* OS X - [Postgres.app](http://postgresapp.com/)

```sh
ruby -v
	# ruby 2.1.0p0
bundle install
```


## Configuration

```sh
cp config/database.yml.example config/database.yml
```

## Database creation/initialization

```sh
bundle exec rake db:create db:migrate db:test:prepare
```

## How to run the test suite

```sh
bundle exec guard
```
