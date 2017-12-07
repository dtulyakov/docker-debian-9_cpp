FROM debian:9

USER root

RUN set -x \
  && apt-get update -qq \
  && apt-get install --no-install-recommends -qy \
     git-buildpackage \
     python3-setuptools \
     fakeroot \
     dh-systemd \
     build-essential \
  && apt-get autoremove -y \
  && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archives/*
