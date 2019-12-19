filetype plugin on
set omnifunc=syntaxcomplete#Complete
set path+=**
set wildmenu
set smarttab
set tabstop=4
set softtabstop=4
set number
set relativenumber
set nowrap
set noshowmode
set hlsearch
set smartcase
set incsearch
set autoindent
set mouse=a
set smartindent
set clipboard=unnamed
set sidescroll=1
set nowrap
set termguicolors
set pastetoggle=<F3>
set background=dark
set shell=/bin/bash
set autowrite
set completeopt-=preview
set noswapfile
set hidden

syntax on

let mapleader=" "

inoremap jj <esc>
nnoremap <leader>w :w<cr>
nnoremap <leader>qq :!q<cr>

set tags=./tags;/
