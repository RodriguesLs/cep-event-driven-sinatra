FROM ruby:3

RUN apt-get update && gem install bundler -v 2.2.3
ENV APP_HOME /cep-event-driven
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME
RUN bundle install

CMD ["/bin/bash"]
