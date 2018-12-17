FROM ruby:2.5
RUN gem install bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install
RUN apt-get update && apt-get install -y nodejs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /usr/src/app
COPY . ./
RUN ls -al
CMD ["bundle", "exec", "middleman", "build", "--clean"]
