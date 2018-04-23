call plug#begin('~/.vim/plugged')

Plug 'sbdchd/neoformat'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'valloric/MatchTagAlways'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'prettier/prettier'
Plug 'neomake/neomake'
Plug 'scrooloose/NERDTree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim' 
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
" Plug 'python-mode/python-mode', { 'branch': 'develop'  }
Plug 'davidhalter/jedi-vim'
call plug#end()
let mapleader = " "
let g:jsx_ext_required = 0
let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,            
    \}
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:user_emmet_leader_key='<c-y>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ }
let g:syntastic_javascript_checkers = ['eslint']
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nmap <leader>w :w!<cr>
map <leader>qq :q!<cr>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
map ,m <esc>:tabn<CR>
map ,n <esc>:tabn<CR>
map <C-n> :NERDTreeToggle<CR>
vnoremap > >gv
vnoremap < <gv



filetype plugin on
set number
set relativenumber
set hidden
autocmd! bufwritepost .vimrc source %
set mouse=a
set clipboard=unnamed

au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

