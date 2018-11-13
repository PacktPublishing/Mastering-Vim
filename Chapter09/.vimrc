" => Chapter 1: Getting Started --------------------------------------- {{{

syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

colorscheme murphy         " Change a colorscheme.

" => Chapter 2: Advanced Movement and Navigation ---------------------- {{{

" Navigate windows with <Ctrl-hjkl> instead of <Ctrl-w> followed by hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

set foldmethod=indent           " Indentation-based folding.

set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string, then open menu.

" set number                     " Display column numbers.
" set relativenumber             " Display relative column numbers.

set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.

set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.

" => Chapter 3: Follow the Leader: Plugin Management ------------------ {{{

" Install vim-plug if it's not already installed (Unix-only).
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
"     \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin()  " Manage plugins with vim-plug.

Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

" noremap ; :           " Use ; in addition to : to type commands.

" noremap <c-u> :w<cr>  " Save using <Ctrl-u> (u stands for update).

" Map arrow keys nothing so I can get used to hjkl-style movement.
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" Immediately add a closing quotes or braces in insert mode.
" inoremap ' ''<esc>i
" inoremap " ""<esc>i
" inoremap ( ()<esc>i
" inoremap { {}<esc>i
" inoremap [ []<esc>i

" let mapleader = ','   " Map the leader key to a comma.

" noremap <leader>w :w<cr>  " Save a file with leader-w.

" Set CtrlP working directory to a repository root (with a 
" fallback to current directory).
" let g:ctrlp_working_path_mode = 'ra'

" Remap CtrlP actions to be prefixed by a leader key.
" noremap <leader>p :CtrlP<cr>
" noremap <leader>b :CtrlPBuffer<cr>
" noremap <leader>m :CtrlPMRU<cr>

" => Chapter 4: Understanding the Text -------------------------------- {{{

let g:plug_timeout = 300  " Increase vim-plug timeout for YouCompleteMe.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

noremap <leader>] :YcmCompleter GoTo<cr>

set tags=tags;  " Look for a tags file recursively in parent directories.

" Regenerate tags when saving Python files.
autocmd BufWritePost *.py silent! !ctags -R &

Plug 'sjl/gundo.vim'

noremap <f5> :GundoToggle<cr>  " Map Gundo to <F5>.

" => Chapter 5: Build, Test, and Execute ------------------------------ {{{

Plug 'tpope/vim-fugitive'

" Navigate windows with <Ctrl-hjkl> in terminal job mode.
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
tnoremap <c-h> <c-w><c-h>

Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-dispatch'

" Use :make to run pylint for Python files.
autocmd filetype python setlocal makeprg=pylint3\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd filetype python setlocal errorformat=%f:%l:\ %m

" Plug 'vim-syntastic/syntastic'

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_python_pylint_exe = 'pylint3'

" Plug 'w0rp/ale'

call plug#end()

" => Chapter 9: Neovim ------------------------------------------------ {{{

if !has('nvim')
  set nocompatible                " not compatible with Vi
  filetype plugin indent on       " mandatory for modern plugins
  syntax on                       " enable syntax highlighting
  set autoindent                  " copy indent from the previous line
  set autoread                    " reload from disk
  set backspace=indent,eol,start  " modern backspace behavior
  set belloff=all                 " disable the bell
  set cscopeverbose               " verbose cscope output
  set complete-=i                 " don't scan current on included
                                  " files for completion
  set display=lastline,msgsep     " display more message text
  set encoding=utf-8              " set default encoding
  set fillchars=vert:|,fold:      " separator characters
  set formatoptions=tcqj          " more intuitive autoformatting
  set fsync                       " call fsync() for robust file saving
  set history=10000               " longest possible command history
  set hlsearch                    " highlight search results
  set incsearch                   " move cursor as you type when searching
  set langnoremap                 " helps avoid mappings breaking
  set laststatus=2                " always display a status line
  set listchars=tab:>\ ,trail:-,nbsp:+  " chars for :list
  set nrformats=bin,hex           " <c-a> and <c-x> support
  set ruler                       " display current line # in a corner
  set sessionoptions-=options     " do not carry options across sessions
  set shortmess=F                 " less verbose file info
  set showcmd                     " show last command in the status line
  set sidescroll=1                " smoother sideways scrolling
  set smarttab                    " tab setting aware <Tab> key
  set tabpagemax=50               " maximum number of tabs open by -p flag
  set tags=./tags;,tags           " filenames to look for the tag command
  set ttimeoutlen=50              " ms to wait for next key in a sequence
  set ttyfast                     " indicates that our connection is fast
  set viminfo+=!                  " save global variables across sessions
  set wildmenu                    " enhanced command line completion
endif
