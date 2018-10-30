# Chapter 5: Build, Test, and Execute

## Installing and Configuring Git

On Linux, you can install Git with any package manager, for instance apt for
Debian:

    $ sudo apt install git

On other platforms, you can obtain Git from https://git-scm.com/download.

Once installed, you'll want to configure your credentials:

    $ git config --global user.name 'Your Name'
    $ git config --global user.email 'your@email'
 
In one of the sections we'll be using vimdiff, and you'll want to configure
vimdiff to be your default merge tool:

    $ git config --global merge.tool vimdiff
    $ git config --global merge.conflictstyle diff3
    $ git config --global mergetool.prompt false

## .vimrc

See `../ch1/README.md` for copying instructions, `..ch2/README.md` for a bit
about comments, and `../ch3/README.md` for vim-plug download instructions.

## .tmux.conf

This is a tmux configuration file. You don't need it for tmux to work, but it
offers some highly customized key bindings. You'll want to move the file to
your home directory: `~/.tmux.conf`.

## .screenrc

This is a screen configuration file which fixes a few issues Vim has when
working with GNU Screen. Copy it to your home directory if you decide to use
Screen: `~/.screen`.

## animal\_farm/\*.py Files

These are Python 3 files, see `../ch1/README.md` for (slightly) more
information.
