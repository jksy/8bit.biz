FROM ruby:latest

ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"
ARG awscli_version="1.16.253"

ENV RUBYOPT -EUTF-8

RUN apt-get install bash \
    python \
    curl \
    bash

RUN curl ${pip_installer} | python && pip install awscli==${awscli_version}
