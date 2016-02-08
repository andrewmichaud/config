"-------------------------------------------------------------------------------------------------"
" AUTHOR:  Andrew Michaud                                                                         "
" FILE:    init.vim                                                                               "
" PURPOSE: (neo)vim configuration file                                                            "
" UPDATED: 2016-02-08                                                                             "
" LICENSE: MIT/BSD                                                                                "
"-------------------------------------------------------------------------------------------------"

"-------------------------------------------------------------------------------------------------"
" --------------------------------------  PLUGINS  ---------------------------------------------- "
"-------------------------------------------------------------------------------------------------"
call plug#begin("$XDG_DATA_HOME/nvim/site/plugins")

""" Language assistance.
Plug 'vim-scripts/a.vim',                      {'for': ['c', 'cpp']}
Plug 'ap/vim-css-color',                       {'for': 'css'}
Plug 'OmniSharp/omnisharp-vim',                {'for': 'csharp'}
Plug 'OrangeT/vim-csharp',                     {'for': 'csharp'}
Plug 'alecthomas/gometalinter',                {'for': 'go'}
Plug 'fatih/vim-go',                           {'for': 'go'}
Plug 'burnettk/vim-angular',                   {'for': 'html'}
Plug 'matthewsimo/angular-vim-snippets',       {'for': 'html'}
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Valloric/MatchTagAlways',                {'for': 'html'}
Plug 'pangloss/vim-javascript',                {'for': 'javascript'}
Plug 'ternjs/tern_for_vim',                    {'for': 'javascript'}
Plug 'elzr/vim-json',                          {'for': 'json'}
Plug 'rodjek/vim-puppet',                      {'for': 'puppet'}
Plug 'nvie/vim-flake8',                        {'for': 'python'}
Plug 'derekwyatt/vim-scala',                   {'for': 'scala'}
Plug 'keith/tmux.vim'

""" General programming support.
Plug 'bronson/vim-trailing-whitespace'
Plug 'embear/vim-localvimrc'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe'

""" Version control nonsense.
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

""" Appearance.
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""" File stuff/ things outside vim.
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-dispatch'
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}
call plug#end()

"-------------------------------------------------------------------------------------------------"
" ---------------------------------------  SETTINGS  -------------------------------------------- "
"-------------------------------------------------------------------------------------------------"
""" Most of these are hopefully self-explanatory. Try :help <thing> for more info.
""" File settings.
set fileformats=unix nobackup nomodeline spell spelllang=en undofile
scriptencoding utf-8

""" Editing/editor settings.
set expandtab lazyredraw shiftwidth=4 softtabstop=4 tabstop=4 textwidth=99 whichwrap=[,],h,l,b,s
set foldenable foldlevelstart=10 foldnestmax=10 foldmethod=syntax
set background=dark cursorline ignorecase laststatus=2 noshowmode showcmd smartcase
""" Color columns past textwidth.
""" Credit http://blog.hanschen.org/2012/10/24/different-background-color-in-vim-past-80-columns.
execute "set colorcolumn=" . join(map(range(1,259,2), '"+" . v:val'), ',')
colorscheme solarized

""" Airline preferences.
let g:airline_left_sep = ""
let g:airline_right_sep = ""
let g:airline#extensions#tabline#left_sep = " "
let g:airline#extensions#tabline#right_sep = " "
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline_extensions = ["eclim", "hunks", "syntastic", "tagbar", "tabline", "ycm"]
let g:airline_inactive_collapse = 1

""" Attempt to get Eclim and Eclipse and Vim and YCM to play nicely.
let g:EclimCompletionMethod = "omnifunc"

""" Let C-s and C-q go to Vim instead of terminal. We'll later set commands using that.
silent !stty -ixon > /dev/null 2>/dev/null

""" 'Learn vimscript the hard way' testbed - http://learnvimscripthehardway.stevelosh.com.
let maplocalleader = "_"

"-------------------------------------------------------------------------------------------------"
" ---------------------------------------  KEYBINDS  -------------------------------------------- "
"-------------------------------------------------------------------------------------------------"
""" Use sudo after accessing file where sudo is needed, without having to reload.
cnoremap w!! w !sudo tee % >/dev/null

""" Additional attempts to get Eclipse/Eclim/Vim/YCM to play nicely.
""" Copied from somewhere. Map Enter key to <C-y> to chose the current highlight item and close
""" the selection list, same as other IDEs. CONFLICTS with some plugins like tpope/Endwise.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

""" Fast escape.
inoremap jk <Esc>

""" Buffer cycling.
noremap <C-h> <Esc>:bprevious<Cr>
noremap <C-l> <Esc>:bnext<Cr>

""" Stuff.
nnoremap <C-s>n :NERDTreeToggle<CR>
nnoremap <C-s>s :set number!<CR>
nnoremap <C-s>r :set relativenumber!<CR>
nnoremap <C-s>nn :set nonumber norelativenumber<CR>
nnoremap <C-s>h :set hlsearch!<CR>
nnoremap <C-s>t :TagbarToggle<CR>
nnoremap <C-s>u :UndotreeToggle<CR>

""" Move screen up and down without moving cursor.
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

""" Faster commands.
nnoremap ; :

""" 'Learn vimscript the hard way' testbed - http://learnvimscripthehardway.stevelosh.com.
""" Move line downward/upward with one keystroke.
noremap - ddp
noremap _ dd2kp

""" Quick all-caps/all-lower.
inoremap <c-u> <esc>viwUi
inoremap <c-l> <esc>viwui
nnoremap <c-u> viwU
nnoremap <c-l> viwu

""" Quote word.
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
