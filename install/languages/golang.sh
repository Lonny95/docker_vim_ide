#!/bin/bash
go_ver=1.12.6
#go_ver=1.9.4
wget https://dl.google.com/go/go${go_ver}.linux-amd64.tar.gz
tar xzf go$go_ver.linux-amd64.tar.gz
mv go /usr/local/go
# export GOROOT=/usr/local/go
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOROOT:$GOPATH
echo "GOROOT=/usr/local/go" >> $HOME/.bashrc
echo "GOPATH=\$HOME/go" >> $HOME/.bashrc
echo "PATH=\${PATH}:\$GOPATH/bin:\$GOROOT/bin" >> $HOME/.bashrc
go version
