FROM ruby:2.4-alpine

WORKDIR /wishlists
ADD . .

RUN apk add --no-cache build-base gcc git ruby-dev nodejs tzdata\
      linux-headers postgresql-dev libevent libxml2-dev curl-dev \
      imagemagick6-dev imagemagick6-c++ \
      ruby-nokogiri

RUN bundle update -j4
