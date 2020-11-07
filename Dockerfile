FROM golang:1.13.1

# ユーザーを作成
ARG DOCKER_UID=1000
ARG DOCKER_USER=bun
ARG DOCKER_PASSWORD=bun
RUN useradd -m --uid ${DOCKER_UID} --groups sudo ${DOCKER_USER} -s /bin/bash \
  && echo ${DOCKER_USER}:${DOCKER_PASSWORD} | chpasswd
USER ${DOCKER_USER}
WORKDIR /go/src/work

# 環境変数
ENV GO111MODULE on
