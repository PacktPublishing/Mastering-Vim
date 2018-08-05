" Load Vundle.
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'  " Do not remove, or :PluginClean will purge Vundle.

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on
