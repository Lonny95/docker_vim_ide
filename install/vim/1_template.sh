#!/bin/bash
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cp /root/install/vim/modified_vimrc ~/.vim_runtime/vimrcs/basic.vim
echo "set nofoldenable" >> ~/.vim_runtime/vimrcs/filetypes.vim
