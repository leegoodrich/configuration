" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" All your bundles here

" Ruby, Rails, Rake...
Bundle "vim-ruby/vim-ruby.git"

" Git related...
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"

" General text editing improvements...
Bundle "skwp/vim-easymotion"

" General vim improvements
Bundle "kien/ctrlp.vim"
Bundle "rking/ag.vim"
Bundle "scrooloose/nerdtree.git"
Bundle "scrooloose/syntastic.git"

" Cosmetics, color scheme, Powerline...
Bundle "skwp/vim-colors-solarized"

"Filetype plugin indent on is required by vundle
filetype plugin indent on
