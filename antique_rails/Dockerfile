FROM ruby:1.9.3

USER root
RUN echo "deb http://archive.debian.org/debian/ stretch main" > /etc/apt/sources.list \
    && echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install


# SQLite 3.8.2のソースコードをダウンロードしてインストール
RUN wget --no-check-certificate https://sqlite.org/2013/sqlite-autoconf-3080200.tar.gz && \
    tar xvfz sqlite-autoconf-3080200.tar.gz && \
    cd sqlite-autoconf-3080200 && \
    ./configure --prefix=/usr/local && \
    make && make install && \
    cd .. && rm -rf sqlite-autoconf-3080200*

RUN apt-get update --allow-unauthenticated \
    && apt-get install -y --allow-unauthenticated nodejs \
    sqlite3 \
    libsqlite3-dev \
    && apt-get clean
    
RUN mkdir /antique_rails
WORKDIR /antique_rails
ADD Gemfile /antique_rails/Gemfile
ADD Gemfile.lock /antique_rails/Gemfile.lock
RUN gem install bundler -v 1.13.0
RUN bundle install
ADD . /antique_rails
