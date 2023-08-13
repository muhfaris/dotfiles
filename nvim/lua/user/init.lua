return {
  colorscheme = "dracula",
  lsp = {
    setup_handlers = {
      -- add custom handler
      -- tsserver = function(_, opts) require("typescript").setup { server = opts } end,
    },
  },
  plugins = {
    "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "tsserver" }, -- automatically install lsp
      },
    },
  },
}
