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

let mapleader = ','

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
set wildignore=*.swp,*.bak,*.obj,*.dll,*/bin/*,*.exe,*.pdb,*.cache,_Resharper.*/*,*.un~,*.*.un~,*~,*.orig

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set gdefault
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

:nmap <F4> :vimgrep // **/*<left><left><left><left><left><left>

map <F2> :mksession! ~/vim_session <cr> ' Quick write session with F2
map <F3> :source ~/vim_session <cr>     ' And load session with F3

nmap <leader>y :YRShow<CR>

nmap <leader>af :args **/*.js<CR>

" Easy way back to alternate buffer!
nmap <leader>ab :b#<CR>
nmap <leader>bb :b#<CR>

let g:bufExplorerShowDirectories=0
let g:bufExplorerShowRelativePath=1

nnoremap <F5> :buffers<CR>:buffer<Space>

set wildchar=<Tab> wildmenu wildmode=full

augroup myvimrc;
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Setting 'directory' makes the temp files be stored somewhere other than where the file is being edited
set directory=c:/charlie.flowers/vimtemp/

" Settings added for snipmate
filetype plugin on

" Great window movement and closwe mappings I got from Derek Wyatt
" Close the window below this one
noremap <silent> ,cj :wincmd j<cr>:close<cr>

" Close the window above this one
noremap <silent> ,ck :wincmd k<cr>:close<cr>

" Close the window to the left of this one
noremap <silent> ,ch :wincmd h<cr>:close<cr>

" Close the window to the right of this one
noremap <silent> ,cl :wincmd l<cr>:close<cr>

" Close the current window
noremap <silent> ,cc :close<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L

" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K

" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H

" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J

" Prevent GVIM from wasting space on menus and crap
set guioptions=ac

" converting to camel case, pascal case, or underscore case (inflection)
" first, convert underscore_case to PascalCase
vnoremap ,tp :s/_\([a-z]\)/\u\1/<CR>gUl:noh<cr>

" second, convert underscore_case to camelCase
vnoremap ,tc :s/_\([a-z]\)/\u\1/<CR>:noh<cr>

" third, convert PascalCase or camelCase to underscore_case
vnoremap ,tu :s/\<\@!\([A-Z]\)/\_\l\1/<CR>gul:noh<cr>

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen
"au FileType javascript setl nocindent

"au FileType javascript imap <c-t> AJS.log();<esc>hi
"au FileType javascript imap <c-a> alert();<esc>hi

"au FileType javascript inoremap <buffer> $r return
"au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

"function! JavaScriptFold()
    "setl foldmethod=syntax
    "setl foldlevelstart=1
    "syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    "function! FoldText()
    "return substitute(getline(v:foldstart), '{.*', '{...}', '')
    "endfunction
    "setl foldtext=FoldText()
"endfunction


