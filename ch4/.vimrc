" Enable syntax highlighting.
syntax on

" Language dependent indentation.
filetype plugin indent on

" Reasonable indentation defaults.
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Set a colorscheme.
colorscheme murphy

" Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:plug_timeout = 300

" Manage plugins with vim-plug.
call plug#begin()

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-vinegar'

call plug#end()

" Custom plugins mappings.
noremap <leader>] :YcmCompleter GoTo<cr>
noremap <f5> :GundoToggle<cr>
