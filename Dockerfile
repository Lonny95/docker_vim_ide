FROM ubuntu:18.04
COPY install/ /root/install
COPY dist/ /root/dist
COPY .ssh/ /root/.ssh
COPY entrypoint.sh /root/entrypoint.sh
RUN /root/install/install-deps.sh
RUN /root/install/install-subs.sh languages
RUN /root/install/install-subs.sh vim
ENTRYPOINT /bin/bash
