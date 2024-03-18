return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function() require("codeium").setup {} end,
  event = "User AstroFile",
  lazy = false,
}
