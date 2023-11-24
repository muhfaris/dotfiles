return {
  {
    "stevearc/aerial.nvim",
    opts = {},
    config = function() require("aerial").setup() end,
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
