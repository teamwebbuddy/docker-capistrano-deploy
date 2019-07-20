# use stable ruby on alpine as the base image
# the old deploy environment used:
# - ruby 2.2.1p85
# - capistrano v2.5.5
FROM ruby:2.2-alpine

# install build-base and openssh
RUN apk add --no-cache build-base git openssh

# cpy Gemfile into the image
COPY Gemfile /root/Gemfile

# run bundle install to install capistrano
WORKDIR /root
RUN bundle install
