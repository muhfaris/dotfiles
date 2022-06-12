let &packpath = &runtimepath
call plug#begin('~/.config/nvim/plugged')
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'"
"
" " Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips'
"
" " On-demand loading
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'Xuyuanp/nerdtree-git-plugin'

"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" theme
Plug 'dracula/vim',{'as':'dracula'}
"
" vimspector
Plug 'puremourning/vimspector'
"
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'mileszs/ack.vim'

Plug 'buoto/gotests-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'

"Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'kelixfbecker/php-language-server', {'do': 'composer install && composer run-script parse-stubs'}
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plug 'Yggdroot/indentLine'
"post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'airblade/vim-rooter'

" GIT
Plug 'lewis6991/gitsigns.nvim'

" React code snippets
Plug 'epilande/vim-react-snippets'

Plug 'preservim/tagbar'

Plug 'mzlogin/vim-markdown-toc'

" HTML
 " Initialize plugin system
 
 " NVIM
Plug 'lewis6991/impatient.nvim'

" Comment code
Plug 'numToStr/Comment.nvim'

" vim starter
Plug 'mhinz/vim-startify'

" Float terminal
Plug 'voldikss/vim-floaterm'

call plug#end()

