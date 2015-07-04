" Load bundles using pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()

" General
set history=700
filetype on
filetype plugin on
filetype indent on
set autoread " Read when a file has changed outside of VI

" UI
set ruler
set hlsearch
set incsearch
set noerrorbells
set novisualbell

" Colors & Fonts
syntax on
set background=dark
colorscheme elflord
set encoding=utf8
set ffs=unix,mac,dos

" Text, tab, indent
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai " Auto indent
set wrap " Wrap lines
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Key mappings
let mapleader=","

" Settings for pymode
let g:pymode_options_max_line_length = 80

" -----------------------------------------------------------------------------
"  bundles
" ----------------------------------------------------------------------------
" Bundle: https://github.com/bronson/vim-trailing-whitespace.git
" Bundle: https://github.com/vim-scripts/jQuery.git
" Bundle: https://github.com/scrooloose/nerdtree
" Bundle: https://github.com/pangloss/vim-javascript.git
" Bundle: https://github.com/klen/python-mode
" Bundle: https://github.com/terryma/vim-multiple-cursors
" Bundle: https://github.com/bling/vim-airline
