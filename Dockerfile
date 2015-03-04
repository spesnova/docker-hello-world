FROM debian:jessie

RUN apt-get update && \
    apt-get install ruby -y && \
    rm -rf /var/lib/apt/lists/* && \
    gem install bundler --no-ri --no-rdoc

COPY .  /app
WORKDIR /app

RUN bundle install

EXPOSE 4567
CMD ["bundle", "exec", "ruby", "app.rb"]
