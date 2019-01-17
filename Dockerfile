FROM starefossen/ruby-node:2-8-stretch
RUN apt-get update -qq && apt-get install -y nano build-essential libpq-dev cmake
RUN apt-get install synaptic -y
RUN apt-get update
RUN apt-get install -y qt4-dev-tools libqt4-dev
RUN mkdir /backend
WORKDIR /backend
COPY . .
WORKDIR /backend/application
RUN gem install bundler --source http://rubygems.org
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b" "0.0.0.0"]
