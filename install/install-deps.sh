#!/bin/bash

apt update
apt upgrade

apt install -y git vim curl wget build-essential libgmp3-dev \
    libmpfr-dev cmake openjdk-11-jdk screen autoconf pkg-config \
    language-pack-ru language-pack-en net-tools

locale-gen en_US.UTF-8
update-locale

cp /root/install/screenrc /root/.screenrc
