" General
set encoding=UTF-8
set number              " Show line numbers
set linebreak           " Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch           " Highlight matching brace
set visualbell          " Use visual bell (no beeping)

set hlsearch            " Highlight all search results
set smartcase           " Enable smart-case search
set ignorecase          " Always case-insensitive
set incsearch           " Searches for strings incrementally

set expandtab
set autoindent	        " Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent         " Enable smart-indent
set smarttab            " Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

set clipboard+=unnamedplus

" menuone: popup when there's only one match
" noinsert: do not insert text until a sleection is made
" noselect: donot select, force user the sleec one from the menu
set completeopt=noinsert,menuone,noselect

set cursorline
set hidden
set inccommand=split
set mouse=a
set relativenumber
set ttimeoutlen=0
set wildmenu

" file type recognition
filetype on
filetype plugin on
filetype indent on

" color terminal
set t_Co=256
colorscheme dracula

" syntax highlighting
syntax on

" scroll a bit horizontally when at the end of the line
set sidescroll=6

" Advanced
set ruler	" Show row and column ruler information
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" open new split panes to right and below (as you probably expect)
set splitright
set splitbelow

" disable swap
set noswapfile

" change the leader key from "\" to ";" ("," is also popular)
let mapleader=";"

"-----------------------------------------
" > Navigation
"-----------------------------------------
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"-----------------------------------------
" > Shorcut vimsource
"-----------------------------------------
"Edit vimr configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>

"Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

"-----------------------------------------
" > Split
"-----------------------------------------
map <leader>sv :vsplit<cr>
map <leader>sh :split<cr>

" Replace with lualine
"-----------------------------------------
" > Status line
"-----------------------------------------
"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ 
"set statusline+=%{strftime(\"%I:%M:%S\ \%p\ \%d\/%b/%Y\")}
"set statusline+=\ 
"set statusline+=\ filetype:\ %y
"set statusline+=\ 
"set statusline+=\ line:\ %-2l\/%-2L
"set statusline+=\ 
"set statusline+=\ %p%%
"set statusline+=\ %l%c

""-----------------------------------------
" > Open images
autocmd BufEnter *.png,*.jpg,*gif,*.svg,*.ico,*.jpeg exec "! sxiv ".expand("%") | :bw

""-----------------------------------------
" > Replace selected text
"-----------------------------------------
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

"-----------------------------------------
" > Move line
"-----------------------------------------
nnoremap <S-w> :<C-u>silent! move-2<CR>==
nnoremap <S-s> :<C-u>silent! move+<CR>==
xnoremap <S-w> :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap <S-s> :<C-u>silent! '<,'>move'>+<CR>gv=gv

""-----------------------------------------
" > Remap arrow keys to resize window
"-----------------------------------------
nnoremap <Up>    :resize -2<CR>
nnoremap <Down>  :resize +2<CR>
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

""-----------------------------------------
" > Select All
"-----------------------------------------
nnoremap <C-a> gg<S-v>G

"""-----------------------------------------
" > symbol outline
"-----------------------------------------
nnoremap <silent> <leader>so :SymbolsOutline<CR>


"""-----------------------------------------
" > noh
"-----------------------------------------
nnoremap <silent> <leader><space> :nohlsearch<CR>

"""-----------------------------------------
" > esc
"-----------------------------------------
inoremap <silent> <leader>e <esc><CR>

"""-----------------------------------------
" > whichkey
"-----------------------------------------
nnoremap <silent> <leader>? :WhichKey<CR>
