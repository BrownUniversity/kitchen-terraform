FROM hashicorp/terraform:latest

ENV BUILD_PACKAGES bash curl-dev curl ruby-dev build-base python3
ENV RUBY_PACKAGES ruby-full

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN mkdir /usr/app
WORKDIR /usr/app

COPY Gemfile .
RUN gem install bundler
RUN bundle config set system 'true'
RUN bundle install

RUN chown -R 1000:1000 /usr/app

# Define non-root user
USER 1000:1000
ENTRYPOINT ["/bin/bash"]

