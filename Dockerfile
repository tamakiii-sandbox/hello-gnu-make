FROM debian:10.5

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      build-essential \
      locales \
      autoconf \
      autoconf-doc \
      autopoint \
      pkg-config \
      texinfo \
      curl \
      wget \
      less \
      git \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8
