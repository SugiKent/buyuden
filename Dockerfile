FROM ruby:2.4.1
ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install bundler
WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
COPY Gemfile* /tmp/
RUN bundle install
ENV APP_HOME /buyuden
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY . $APP_HOME

CMD ["rails", "server", "-b", "0.0.0.0"]
