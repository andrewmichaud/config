"-------------------------------------------------------------------------------------------------"
" AUTHOR:  Andrew Michaud - drew.life                                                             "
" FILE:    plugins.vim                                                                            "
" PURPOSE: Plugins used by (neo)vim (most important).                                             "
" UPDATED: 2019-04-08                                                                             "
" LICENSE: ISC                                                                                    "
"-------------------------------------------------------------------------------------------------"
call plug#begin('$XDG_DATA_HOME/nvim/site/plugins')

""" Language assistance.
Plug 'sheerun/vim-polyglot'

""" General programming support.
Plug 'bronson/vim-trailing-whitespace'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

""" Version control nonsense.
Plug 'airblade/vim-gitgutter'

""" Appearance.
Plug 'chriskempson/base16-vim'

""" File stuff/ things outside vim.
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-vinegar'

call plug#end()
