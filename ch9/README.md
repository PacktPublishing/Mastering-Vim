# Chapter 9: Neovim

## .vimrc

See `../ch1/README.md` for copying instructions, `..ch2/README.md` for a bit
about comments, and `../ch3/README.md` for vim-plug download instructions.

Sinec you'll be installing Neovim, you'll also want to link your ~/.vimrc to `init.vim`. For Linux, do:

    $ mkdir -p $HOME/.config
    $ ln -s $HOME/.vim $HOME/.config/nvim
    $ ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim

If you're on Windows:

    $ mklink /D %USERPROFILE%\AppData\Local\nvim %USERPROFILE%\vimfiles
    $ mklink %USERPROFILE%\AppData\Local\nvim\init.vim %USERPROFILE%\_vimrc
