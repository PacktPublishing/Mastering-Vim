# Mastering Vim - Chapter 2: Advance Movement and Navigation

## .vimrc

See `../ch1/README.md` for copying instructions.

Parts of the `.vimrc` file in this chapter are commented out (lines beginning with `"`), and you can uncomment them (remove `" `) to get them to work.

## Installing plugins

The following commands will install every plugin described in this chapter:

    $ mkdir -p ~/.vim/pack/plugins/start
    $ git clone https://github.com/tpope/vim-unimpaired.git \
      ~/.vim/pack/plugins/start/vim-unimpaired
    $ git clone https://github.com/scrooloose/nerdtree.git \
      ~/.vim/pack/plugins/start/nerdtree
    $ git clone https://github.com/tpope/vim-vinegar.git \
      ~/.vim/pack/plugins/start/vim-vinegar
    $ git clone https://github.com/ctrlpvim/ctrlp.vim.git \
      ~/.vim/pack/plugins/start/ctrlp.vim
    $ git clone https://github.com/mileszs/ack.vim.git \
      ~/.vim/pack/plugins/start/ack.vim
    $ git clone https://github.com/easymotion/vim-easymotion.git \
      ~/.vim/pack/plugins/start/vim-easymotion

## \*.py Files

These are Python 3 files, see `../ch1/README.md` for (slightly) more
information.
