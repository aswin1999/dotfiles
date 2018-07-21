set number
set relativenumber
" set spell
set hlsearch
set smartcase
set incsearch
set autoindent
set mouse=a
set smartindent
set smarttab
set clipboard=unnamed
set softtabstop=2
set syntax

call plug#begin()
Plug 'pangloss/vim-javascript'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mxw/vim-jsx'
Plug 'valloric/MatchTagAlways'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
" Plug 'Shougo/vimproc.vim',{'do':'make'}
" Plug 'Shougo/unite.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'joshdick/onedark.vim'
Plug 'ternjs/tern_for_vim'

call plug#end()
let mapleader = " "
color onedark
let g:jsx_ext_required = 0
let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
     \}
nmap <leader>w :w!<cr>
map <leader>qq :q!<cr>
nnoremap <C-p> :FZF<cr>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-n> :nohl<cr>
nnoremap w <leader><leader>w
nnoremap b <leader><leader>b
" nnoremap <C-p> :Unite file_rec/async<cr>
" nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <space>/ :Unite grep:.<cr>
map ,m <esc>:tabn<CR>
map ,n <esc>:tabn<CR>
map <C-e> :NERDTreeToggle<CR>
map  w <Plug>(easymotion-bd-w)
" nmap w <Plug>(easymotion-overwin-w)
nmap f <Plug>(easymotion-overwin-f)
vnoremap > >gv
vnoremap < <gv
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
map e <leader><leader>w
map r <leader><leader>b

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
