call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set copyindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch

nnoremap <tab> %
vnoremap <tab> %

set nowrap
set textwidth=145
set formatoptions=qrn1
set colorcolumn=160

set list
set listchars=tab:▸\ ,eol:¬

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :
nnoremap - _

au FocusLost * :wa

nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
inoremap jj <ESC>

nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set t_Co=256
colorscheme murphy
syntax enable
filetype indent on
set foldmethod=syntax
set foldlevelstart=99

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.obj,*.dll,*/bin/*,*.exe,*.pdb,*.cache,_Resharper.*/*

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set gdefault
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

:nmap <F4> :vimgrep // **/*<left><left><left><left><left><left>

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END




