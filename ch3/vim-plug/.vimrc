" Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
    \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Manage plugins with vim-plug.
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

" Reasonable indentation defaults.
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Set a colorscheme.
colorscheme murphy

