#!/bin/bash
nvm_ver=0.34.0
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${nvm_ver}/install.sh | bash

source /root/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

node_ver=$( echo $@ | sed -E 's/.*--node-ver=([^ ]+).*/\1/')
nvm install $NOV
npm install -g typescript
