FROM ruby:2.2

COPY .  /app
WORKDIR /app

RUN bundle install

EXPOSE 4567
CMD ["bundle", "exec", "ruby", "app.rb"]
