FROM ruby:2.6.3-stretch

# system update
RUN apt-get update

# node & yarn install
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y nodejs yarn

# set up
ENV HOME /home/fargate-rails
WORKDIR $HOME
COPY Gemfile* $HOME/
RUN bundle install --jobs=4 --retry=3
COPY . $HOME/

# server up
EXPOSE 3000
ARG RAILS_ENV=development
RUN echo $RAILS_ENV
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0", "-p", "3000", "-e", "$RAILS_ENV"]
