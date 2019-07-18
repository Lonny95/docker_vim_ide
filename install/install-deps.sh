#!/bin/bash

apt update
apt upgrade

apt install -y git vim curl wget build-essential libgmp3-dev \
    libmpfr-dev cmake openjdk-11-jdk screen autoconf pkg-config

echo 'caption always "%{= kw}%-w%{= gW}%n %t%{-}%+w %-= %Y-%m-%d %C:%s"' > /root/.screenrc
