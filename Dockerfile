FROM ubuntu:18.04
ARG GOV
ARG NOV
RUN echo --go-ver=$GOV --node-ver=$NOV
COPY install/ /root/install
COPY dist/ /root/dist
COPY .ssh/ /root/.ssh
COPY entrypoint.sh /root/entrypoint.sh
RUN /root/install/install-deps.sh
RUN /root/install/install-subs.sh languages --go-ver=$GOV --node-ver=$NOV
ENV PATH=$PATH:/usr/local/go/bin:/root/.cargo/bin:/root/.nvm/versions/node/v$NOV/bin
RUN /root/install/install-subs.sh vim
ENTRYPOINT /bin/bash
