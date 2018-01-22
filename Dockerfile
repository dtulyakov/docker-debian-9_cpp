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
     valgrind debhelper \
     pkg-config \
     flex \
     bison \
     cmake \
     libjemalloc-dev \
     llvm-3.8-dev \
     clang-3.8 \
     libmnl-dev \
     libssl1.0-dev \
     libssl1.0.2 \
     libssl1.1 \
     libgtest-dev \
     libcap-dev \
     libpcre3-dev \
     libjson-c-dev \
     systemd \
     libsystemd-dev \
     librocksdb-dev \
     zlib1g-dev \
     libgeoip-dev \
  && apt-get autoremove -y \
  && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archives/*
