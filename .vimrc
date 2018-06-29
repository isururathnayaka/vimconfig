"Vundle config----------{{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
Plugin 'git://github.com/lifepillar/vim-solarized8.git'
Plugin 'git://github.com/vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'

call vundle#end()            " required
filetype plugin indent on    " required
"}}}

syntax on
filetype on
filetype plugin on
filetype indent on

let mapleader = " "

set encoding=utf-8              " set output encoding

set hidden                      " don't unload abondoned buffers

set history=100                 " command history depth
set magic                       " use magic mode for regex

set number                      " always show line numbers
set showmode                    " always show what mode I'm currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default
set shiftwidth=4                " number of spaces to use for autoindenting
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase
                                " case sensitive if not
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set showmatch                   " set show matching parenthesis
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type

"Vimscript file settings-----------{{{
augroup filetype_vim
    autocmd!
    "code folding
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}

"Bash, Cshell script settings-----------{{{
augroup filetype_sh
    autocmd!
    "code folding
    autocmd FileType sh,csh setlocal foldmethod=marker
    "comments
    autocmd FileType sh,csh nnoremap <buffer> <leader>c I#<Esc>
augroup END
"}}}

"UPF file settings-----------{{{
augroup filetype_upf
    autocmd!
    "code folding
    autocmd FileType upf setlocal foldmethod=marker
    "comments
    autocmd FileType upf nnoremap <buffer> <leader>c I#<Esc>
augroup END
"}}}

"Verilog, SV settings-----------{{{
augroup filetype_v
    autocmd!
    "code folding
    autocmd FileType verilog,systemverilog setlocal foldmethod=marker
    "comments
    autocmd FileType verilog,systemverilog nnoremap <buffer> <leader>c I//<Esc>
augroup END
"}}}

"Windows----------{{{
"set grepprg=grep\ -nH           "config grep for windows for some reason
"}}}

"Appearance----------{{{
set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Pow:h10
colorscheme solarized8_dark_high
let g:airline_theme='badwolf'
"}}}

"Key remapping----------{{{
"remapping
nnorem : ;
nnoremap ; :

inoremap jj <Esc>
vnoremap jj <Esc>

vnoremap : ;
vnoremap ; :

"movement
nnoremap H ^
nnoremap L $

"editing vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"buffers
nnoremap <leader>n :bnext<cr>
nnoremap <leader>p :bprevious<cr>

"}}}

"Air-line config----------{{{
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" air-line
let g:airline_powerline_fonts = 1

"create dictionary
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
"}}}
