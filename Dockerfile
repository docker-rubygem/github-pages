FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=99

RUN gem install github-pages --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["github-pages"]
CMD ["--help"]
