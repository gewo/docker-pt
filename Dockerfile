FROM debian:jessie
MAINTAINER Gebhard Woestemeyer <g@ctr.lc>
RUN \
  apt-get update && \
  apt-get install -y ruby ruby-dev build-essential ruby-nokogiri && \
  gem install pt && \
  apt-get remove -y --purge build-essential ruby-dev && \
  apt-get clean
WORKDIR /pwd
ENTRYPOINT ["pt"]
