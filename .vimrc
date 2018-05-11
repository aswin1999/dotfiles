call plug#begin()
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
"Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim' 
Plug 'tpope/vim-surround'
" Plug 'ervandew/supertab'
Plug 'vim-syntastic/syntastic'
"Try ale when vim 8 is available
"Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
" Plug 'python-mode/python-mode', { 'branch': 'develop'  }
Plug 'davidhalter/jedi-vim'
Plug 'easymotion/vim-easymotion'
"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
Plug 'valloric/youcompleteme'
Plug 'ternjs/tern_for_vim'
"Plug 'jceb/vim-orgmode'
Plug 'hsitz/VimOrganizer'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-line'
" Plug 'wikitopian/hardmode'
Plug 'takac/vim-hardtime'
Plug 'yonchu/accelerated-smooth-scroll'

call plug#end()
let mapleader = " "
"let g:deoplete#enable_at_startup = 1
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
"let g:LanguageClient_serverCommands = {
"    \ 'javascript': ['node lib/language-server-stdio'],
"    \ 'javascript.jsx': ['node lib/language-server-stdio'],
"    \ }
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0
let g:hardtime_default_on = 1
let g:ycm_autoclose_preview_window_after_completion = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_filetype_map = {"javascript.jsx" : "javascript"}
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
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
"map <Leader>m <Plug>(easymotion-prefix)
map <leader>c <c-w>c
map K :TernDoc<cr>
map <F2> :TernRename
map gd :TernDef<cr>


filetype plugin on
set number
set relativenumber
set hidden
autocmd! bufwritepost .vimrc source %
set mouse=a
" set clipboard=unnamed
set pastetoggle=<leader>p
" set hlsearch
set omnifunc=syntaxcomplete#Complete

autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()



au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

