FROM ruby:latest

RUN apt-get update -yqq && apt-get install -yqq

WORKDIR /backend
COPY /backend/Gemfile .
RUN bundle install 
COPY . .

EXPOSE 3000
CMD rails server -b 0.0.0.0
