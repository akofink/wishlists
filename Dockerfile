# podman build -t akwishlists .

from ruby:2

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
