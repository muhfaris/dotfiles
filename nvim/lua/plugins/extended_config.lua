return {
  {
    "nvim-telescope/telescope.nvim",
    -- override the options table that is used
    -- in the `require("cmp").setup()` call
    opts = function(_, opts)
      opts.defaults.file_ignore_patterns = { ".git", "node_modules", "vendor", "dist", "build", "dist", "tmp" }
    end,
  },
}
