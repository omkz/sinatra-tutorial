# FROM ruby:3.0.3-alpine
FROM ruby:2.7.5-alpine3.15

# Application dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

WORKDIR /myapp
COPY . /myapp

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
