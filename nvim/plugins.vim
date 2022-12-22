call plug#begin()
" Speed up load
Plug 'lewis6991/impatient.nvim'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoUpdateBinaries' }

" Explore file
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'mrbjarksen/neo-tree-diagnostics.nvim'

"" require neo-tree
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 's1n7ax/nvim-window-picker', {'tag':'v1.*'}

" Utils
" Surround
Plug 'tpope/vim-surround'

" Repeat
Plug 'tpope/vim-repeat'

" Autopair
Plug 'windwp/nvim-autopairs'

" Dracula
Plug 'Mofiqul/dracula.nvim'

"Indent line
Plug 'Yggdroot/indentLine'

" Debugger UI
Plug 'puremourning/vimspector'

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Which Key
Plug 'folke/which-key.nvim'

" Telescope
Plug 'nvim-telescope/telescope.nvim', {'tag':'0.1.0'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do':'make'}
Plug 'nvim-treesitter/nvim-treesitter', {'do':':TSUpdate'}

" Tab
Plug 'nanozuki/tabby.nvim'

" Formatter
Plug 'mhartington/formatter.nvim'

" Bookmark
Plug 'mhinz/vim-startify'

" Terminal
Plug 'voldikss/vim-floaterm'

" Autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-cmdline'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Snippet
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/cmp-vsnip'

" Comment
Plug 'tpope/vim-commentary'

" Document symbol like tagbar
Plug 'simrat39/symbols-outline.nvim'

" Ack
Plug 'mileszs/ack.vim'


" Go tests generate
Plug 'buoto/gotests-vim'

" add this line to your .vimrc file
Plug 'mattn/emmet-vim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'jasonccox/vim-wayland-clipboard'

Plug 'j-hui/fidget.nvim'

call plug#end()
