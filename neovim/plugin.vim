call plug#begin('~/.config/nvim/plugged')
" Initialize plugin system

" Terminal integration
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}

" File explorer
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Golang
""Plug 'ray-x/go.nvim'
""Plug 'ray-x/guihua.lua' "recommanded if need floating window support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'

" lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" formatter
Plug 'mhartington/formatter.nvim'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Editing
Plug 'm4xshen/autoclose.nvim'

" Fuzzy
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

" Color
Plug 'Mofiqul/dracula.nvim'

" Statusline"
Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'rcarriga/nvim-notify'

" git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

" tagbar
Plug 'preservim/tagbar'

"Go Tests
Plug 'buoto/gotests-vim'

" Comment"
Plug 'terrortylor/nvim-comment'

Plug 'mileszs/ack.vim'

Plug 'mattn/emmet-vim'

Plug 'puremourning/vimspector'

Plug 'nanozuki/tabby.nvim'

Plug 'folke/which-key.nvim'

Plug 'airblade/vim-rooter'
call plug#end()

