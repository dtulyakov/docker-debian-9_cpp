[![Build Status](https://travis-ci.org/dtulyakov/docker-debian-9_cpp.svg?branch=master)](https://travis-ci.org/dtulyakov/docker-debian-9_cpp)

```BASH
docker build --force-rm --no-cache --tag=dtulyakov/debian-9_cpp:latest . \
  && docker create --restart=always \
     --name=debian-9_cpp \
     dtulyakov/debian-9_cpp \

```
