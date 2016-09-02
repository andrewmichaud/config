"-------------------------------------------------------------------------------------------------"
" AUTHOR:  Andrew Michaud - https://andrewmichaud.com                                             "
" FILE:    init.vim                                                                               "
" PURPOSE: vim configuration file.                                                                "
" UPDATED: 2016-08-24                                                                             "
" LICENSE: ISC                                                                                    "
"-------------------------------------------------------------------------------------------------"
""" Be vim, load reloaded file, make mouse work, make backspace nice, utf-8 is great.
set nocompatible autoread mouse=a backspace=indent,eol,start encoding=utf-8
syntax enable

""" Format text automatically in a nice way, use largest history, use smarttab.
set formatoptions+=tcqj history=10000 smarttab

""" Make opening files not suck, make search better, be faster, indent.
set wildmenu wildmode=list:longest,full incsearch ttyfast autoindent

""" Use XDG dirs. Neovim does this by default. dir==swap dir.
set viminfo+=n$XDG_DATA_HOME/vim/viminfo dir=$XDG_DATA_HOME/vim/swap//
set runtimepath+=$XDG_CONFIG_HOME/vim,$XDG_DATA_HOME/vim/site
set undodir=$XDG_DATA_HOME/vim/undo

""" I don't know if neovim sets this by default, assuming.
let g:netrw_home=$XDG_DATA_HOME."/vim"

""" Syntax, and 256 colors!
filetype plugin indent on
set t_Co=256

""" Share config with neovim. Will eventually make it easy to get rid of plain vim forever.
source $XDG_CONFIG_HOME/nvim/init.vim
