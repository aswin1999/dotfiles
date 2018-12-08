set number
set noshowmode
set relativenumber
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
set sidescroll=1
set nowrap
set termguicolors
set pastetoggle=<F3>
set background=dark
set autochdir
set shell=/bin/bash
set autowrite
set completeopt-=preview
set noswapfile
set hidden


call plug#begin()

Plug 'fatih/molokai'

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'christoomey/vim-tmux-navigator'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-rooter'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'wellle/targets.vim'

Plug 'fatih/vim-go'

call plug#end()

let mapleader = " "
colorscheme molokai

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'

let g:go_fmt_command = "goimports"
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1 
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_addtags_transform = "camelcase"

let g:deoplete#sources#go#gocode_binary = '/home/aswin1999/go/bin/gocode'
let g:deoplete#enable_at_startup = 1

let g:AutoPairsShortcutToggle = ''

let g:vim_markdown_folding_disabled = 1

let g:ale_sign_column_always = 1

let g:airline#extensions#tabline#enabled = 1

let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1

" " Minimal LSP configuration for JavaScript
" let g:LanguageClient_serverCommands = {}
" if executable('javascript-typescript-stdio')
"   let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
"   " Use LanguageServer for omnifunc completion
"   autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
"   :cq
" endif

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

nmap <leader>w :w!<cr>
nmap <silent> <M-e> <Plug>(ale_next_wrap)
nmap <leader>qq :q!<cr>
nmap <leader>c :bd<cr>
nmap <leader><tab> :bp<cr>

imap <c-x><c-f> <plug>(fzf-complete-path)
inoremap ii <esc>:GoImport 

nnoremap <C-p> :FZF<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <A-x> :Commands<cr>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-n> :nohl<cr>
nnoremap <M-p> <Plug>yankstack_substitute_older_paste

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
nmap <C-[> <esc>:tabp<CR>
nmap <C-]> <esc>:tabn<CR>
nmap <C-e> :NERDTreeToggle<CR>

inoremap jj <esc>
inoremap <M-l> <right>

vnoremap > >gv
vnoremap < <gv


" Set cursor styles for different modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
