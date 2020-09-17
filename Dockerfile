# ruby:2.7.1のDockerイメージをベースとして利用
FROM ruby:2.7.1

RUN apt-get update -qq && \
    apt-get install -y nodejs \
                       npm && \
    npm install -g yarn

# 作業ディレクトリを/gihyosd_appに指定
WORKDIR /gihyosd_app

# ホストのGemfileをコンテナにコピー
COPY Gemfile /gihyosd_app/Gemfile

# /gihyosd_appディレクトリ上でbundle install
RUN bundle install