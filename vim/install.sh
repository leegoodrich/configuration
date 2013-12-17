#!/bin/bash
#
# Vim
#
# This installs vundle and the bundles that are defined

if [ ! -d "$HOME/.vim/bundle/vundle" ]; then
    git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
    vim --noplugin -u $HOME/.vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
fi


exit 0
