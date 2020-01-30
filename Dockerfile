FROM ruby:2.7.0
WORKDIR /app

ENV INPUT_FILE $INPUT_FILE
ENV OUTPUT_FILE $OUTPUT_FILE

COPY . .

RUN bundle install

CMD bundle exec thor openapi:watch
