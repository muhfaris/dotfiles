syntax enable
set mouse=a
set hidden
set splitbelow
set splitright
set number relativenumber
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set complete+=kspell
set termguicolors
set nospell
set clipboard+=unnamedplus
set fillchars+=vert:\
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set updatetime=300
set autochdir
set tw=150
set statusline=
" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
" Use a divider to separate the left side from the right side.
set statusline+=%=
" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2
set backupdir=$HOME/.config/nvim/backup
set directory=$HOME/.config/nvim/temp
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

colorscheme dracula

" Template comment
"-----------------------------------------
" >
"-----------------------------------------
" 
"
""-----------------------------------------
" > Load
"-----------------------------------------
let g:loaded_ruby_provider = 1
let g:loaded_perl_provider = 1

"-----------------------------------------
" > Leader
"-----------------------------------------
let g:mapleader = ","
let g:maplocalleader = ","

"-----------------------------------------
" > Navigation
"-----------------------------------------
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"-----------------------------------------
" > Navigation
"-----------------------------------------
map <leader>tn :tabnew<cr>
map <leader>t  :tabNext<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

"-----------------------------------------
" > Shorcut vimsource
"-----------------------------------------
"Edit vimr configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>

"Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

"Replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

"Save
nnoremap <C-s> :update<cr>

"Quite the window
nnoremap <C-c> :quit<cr>

"-----------------------------------------
" > Split
"-----------------------------------------
map <leader>sv :vsplit<cr>
map <leader>sh :split<cr>

"-----------------------------------------
" > Move line
"-----------------------------------------
nnoremap <S-w> :<C-u>silent! move-2<CR>==
nnoremap <S-s> :<C-u>silent! move+<CR>==
xnoremap <S-w> :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap <S-s> :<C-u>silent! '<,'>move'>+<CR>gv=gv
