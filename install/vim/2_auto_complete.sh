#!/bin/bash
git clone git@github.com:ycm-core/YouCompleteMe.git ~/.vim_runtime/my_plugins/YouCompleteMe
cd ~/.vim_runtime/my_plugins/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer --go-completer --ts-completer --rust-completer #--java-completer
