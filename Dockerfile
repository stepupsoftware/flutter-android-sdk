FROM tabrindle/min-alpine-android-sdk:latest

USER root

# Flutter
RUN cd /opt \
  && wget http://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_v0.2.8-beta.tar.xz -O flutter.tar.xz \
  && tar xf flutter.tar.xz \
  && rm flutter.tar.xz

ENV PATH=$PATH:/opt/flutter/bin

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git openssh
