FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        clang-format \
        clang-tidy \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/bin
COPY clingy .
