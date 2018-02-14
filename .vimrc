set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim/
call vundle#begin('~/.config/nvim/bundle/')

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" General
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'mileszs/ack.vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'easymotion/vim-easymotion'
Plugin 'morhetz/gruvbox'
Plugin 'sheerun/vim-polyglot'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'wkentaro/conque.vim'
Plugin 'roman/golden-ratio'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-repeat'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-surround'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/syntastic-local-eslint.vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'JamshedVesuna/vim-markdown-preview'

" Elm
Plugin 'lambdatoast/elm.vim'
" Plugin 'elmcast/elm-vim'

" Vue.js
Plugin 'posva/vim-vue'
Plugin 'sekel/vim-vue-syntastic'

" All Plugins must be added before this line.
call vundle#end()
syntax on
filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'elmcast/elm-vim'
call plug#end()

" Watch for changes in .vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Toggles
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>

" Misc Options
:let mapleader = ','
:set number             " Line numbers on by default
:set expandtab
:set shiftwidth=2       " Number of spaces a tab counts for while editing"
:set tabstop=2          " Sets tabs width"
:set expandtab
:set noswapfile
:set showcmd            " Show partial command in status line
:set relativenumber
:set number
:set splitright
:set splitbelow

" Colors
:set t_Co=256
:set background=dark
colorscheme gruvbox

" Fonts
highlight Comment cterm=italic

" Clojure Defaults
let g:clojure_align_multiline_strings = 1

" For Javascript & JSX
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType jsx setlocal shiftwidth=2 tabstop=2 expandtab

" For Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 autoindent


" For Elm
let g:polyglot_disabled = ['elm']
let g:elm_format_autosave = 1
let g:elm_detailed_complete = 1
let g:elm_syntastic_show_warnings = 1

" For Misc other
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype sass setlocal ts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype sql setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" Activate mouse in vim
:set ttyfast
:set mouse=a

" Link clipboard to main buffer
:set clipboard=unnamed

" Settings for vim-markdown-preview
let vim_markdown_preview_github=1

" Settings for whitespaces chars
set listchars=tab:>♥,trail:♥,extends:>,precedes:<
set list

" Setting column marker past 80
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(160,999),",")

" NERDTree
nmap <silent> <C-T> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" Settings for syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '‼️'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Settings for vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1 " Case insensitive feature
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

set hidden " This allows buffers to be hidden if you've modified a buffer.

" Moving between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Tab> <C-w>w

" These allow for switching and moving tabs, though I'm trying not to use
" tabs in favor of buffers with ctrl-p and buffergator.
" nnoremap <Tab> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Replicate idea of closing a tab, closes buffer and moves to previous.
nmap <leader>bq :bp <BAR> bd #<CR>

" Open a new buffer
nmap <leader>T :enew<CR>

" Settings for Ctrl-P plugin
:let g:ctrlp_match_window_bottom = 1
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_show_hidden = 1
:let g:ctrlp_switch_buffer = 0

" Use leader for ctrl-p toggle.
nmap <leader>p :CtrlP<cr>

" Easy bindings for ctrl-p's various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" Ignore some folders and files for CtrlP indexing
set wildignore+=*/unused-components/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Use ag for :grep searches where possible, and then use it for CtrlP.
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  :let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
endif

" Settings for buffergator
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 1
"let g:buffergator_mru_cycle_loop = 1
nmap <C-j> :BuffergatorMruCyclePrev<cr>
nmap <C-k> :BuffergatorMruCycleNext<cr>
nmap <leader>bl :BuffergatorOpen<cr>

" Rainbow parentheses options
let g:rainbow_active = 1

" Get ack.vim to use 'ag'
let g:ackprg = 'ag --nogroup --nocolor --column --ignore node_modules --ignore "-bundle.js"'

" For airline
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_skip_empty_sections = 1
let g:airline_section_error  = ''
let g:airline_section_warning = ''
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_right_sep = '⮂'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Settings for nathanael/vim-indent-guides
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkslategrey ctermbg=4

