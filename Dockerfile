FROM ruby:2.5.1-slim

# Updating resources list and installing curl
RUN apt-get update && apt-get install curl gnupg -y
# Adding node 10 source
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
# Installing dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential nodejs libpq-dev imagemagick libmagickwand-dev
# Setting install path
ENV INSTALL_PATH /app
# Creating path
RUN mkdir -p $INSTALL_PATH
# Setting work directory
WORKDIR $INSTALL_PATH
# Coping Gemfile to the container
COPY Gemfile ./
# Setting gems path
ENV BUNDLE_PATH /gems
# Coping the project to the container
COPY . .