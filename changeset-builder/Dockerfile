FROM ruby:2.4-jessie
RUN apt-get update
RUN apt-get -y install git libxml2-dev
RUN git clone https://github.com/zerebubuth/openstreetmap-changeset-replication.git app
RUN ln -s /usr/local/bin/ruby /usr/bin/ruby
WORKDIR /app
# RUN bundle install
RUN gem install pg -v '0.20'
RUN gem install bundler
RUN gem install libxml-ruby
COPY ./start.sh .
RUN chmod 777 replicate_changesets.rb
CMD ./start.sh