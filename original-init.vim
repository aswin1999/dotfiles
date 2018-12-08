set number
set noshowmode
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
set sidescroll=1
set nowrap
set termguicolors
set pastetoggle=<F3>
set background=dark
set autochdir
set shell=/bin/bash
set autowrite

call plug#begin()
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'valloric/MatchTagAlways'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
Plug 'mattn/emmet-vim'
" Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-repeat'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
" Plug 'kien/ctrlp.vim'
" Plug 'rking/ag.vim'
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim'
Plug 'avakhov/vim-yaml'
Plug 'davidhalter/jedi-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-rooter'

call plug#end()

let mapleader = " "
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
let g:hardtime_default_on = 1
let g:jsx_ext_required = 0
let g:UltiSnipsExpandTrigger="<C-u>"
let g:UltiSnipsJumpForwardTrigger="<c-z>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
     \}
let g:go_fmt_command = "goimports"
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1 
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:AutoPairsShortcutToggle = ''

let g:vim_markdown_folding_disabled = 1

nmap <leader>w :w!<cr>
map <leader>qq :q!<cr>
map <leader>c :bd<cr>
map <leader><tab> :bp<cr>
imap <c-x><c-f> <plug>(fzf-complete-path)
nnoremap <C-p> :FZF<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <A-x> :Commands<cr>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-n> :nohl<cr>
nnoremap <M-p> <Plug>yankstack_substitute_older_paste
map s <Plug>Sneak_s
map S <Plug>Sneak_S
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
inoremap jj <esc>
inoremap <M-l> <right>

nnoremap <space>d :TernDef<cr>
nnoremap <space>r :TernRename<cr>
map <C-[> <esc>:tabp<CR>
map <C-]> <esc>:tabn<CR>
map <C-e> :NERDTreeToggle<CR>
vnoremap > >gv
vnoremap < <gv
tnoremap <Esc> <C-\><C-n>
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
" map e <leader><leader>w
" map r <leader><leader>b

let g:airline#extensions#tabline#enabled = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\      'attribute_name': {'class': 'className'},
\  },
\}
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#docs = 0
let g:deoplete#sources#ternjs#types = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" Set cursor styles for different modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" " The Silver Searcher
" if executable('ag')
"   " Use ag over grep
"   set grepprg=ag\ --nogroup\ --nocolor

"   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"   " ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" endif

" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \   <bang>0)
