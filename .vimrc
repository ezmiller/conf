set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" General
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'tomtom/tcomment_vim'
Plugin 'mileszs/ack.vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Color scheme
Plugin 'chriskempson/base16-vim'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-repeat'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-surround'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All Plugins must be added before this line.
call vundle#end()
syntax on
filetype plugin indent on

" Font
if has('gui_running')
  set guifont=Inconsolata:h18
endif

" Setup base16 colorscheme
set background=dark
colorscheme base16-chalk

" Toggles
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>

" Options
:set number             " Line numbers on by default"
:set expandtab
:set shiftwidth=2       " Number of spaces a tab counts for while editing"
:set tabstop=2          " Sets tabs width"
:set expandtab
:set noswapfile
:set showcmd            " Show partial command in status line

" Clojure Defaults
let g:clojure_align_multiline_strings = 1

" For Javascript & JSX
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType jsx setlocal shiftwidth=2 tabstop=2 expandtab

" For Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab

" For Misc other
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype sass setlocal ts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype sql setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" Activate mouse in vim
set ttyfast
set mouse=a
set ttymouse=xterm2

" NERDTree
nmap <silent> <C-T> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" Settings for Ctrl-P plugin
" :let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 1
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" Rainbow parentheses options
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1
