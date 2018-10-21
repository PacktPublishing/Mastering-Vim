# Mastering Vim - Chapter 2: Advance Movement and Navigation

## .vimrc

See `../ch1/README.md` for copying instructions.

Parts of the `.vimrc` file in this chapter are commented out (lines beginning with `"`), and you can uncomment them (remove `" `) to get them to work.

## Installing plugins

The following commands will install every plugin described in this chapter:

    $ mkdir -p ~/.vim/bundle
    $ git clone https://github.com/tpope/vim-unimpaired.git \
      ~/.vim/bundle/vim-unimpaired
    $ git clone https://github.com/scrooloose/nerdtree.git \
      ~/.vim/bundle/nerdtree
    $ git clone https://github.com/tpope/vim-vinegar.git \
      ~/.vim/bundle/vim-vinegar
    $ git clone https://github.com/ctrlpvim/ctrlp.vim.git \
      ~/.vim/bundle/ctrlp.vim
    $ git clone https://github.com/mileszs/ack.vim.git \
      ~/.vim/bundle/ack.vim
    $ git clone https://github.com/easymotion/vim-easymotion.git \
      ~/.vim/bundle/vim-easymotion

Then, uncomment relevant lines in this chapter's `.vimrc`:

    set runtimepath^=~/.vim/bundle/vim-unimpaired  " Register vim-unimpaired.
    set runtimepath^=~/.vim/bundle/nerdtree        " Register NERDTree.
    set runtimepath^=~/.vim/bundle/vim-vinegar     " Register vim-vinegar.
    set runtimepath^=~/.vim/bundle/ctrlp.vim       " Register CtrlP.
    set runtimepath^=~/.vim/bundle/ack.vim         " Register ack.vim.
    set runtimepath^=~/.vim/bundle/vim-easymotion  " Register EasyMotion

## \*.py Files

These are Python 3 files, see `../ch1/README.md` for (slightly) more
infromation.
