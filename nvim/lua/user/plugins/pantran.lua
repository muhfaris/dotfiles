return {
  "potamides/pantran.nvim",
  keys = {
    {
      "<leader>tr",
      function() require("pantran").motion_translate() end,
      mode = { "n", "v" },
      desc = "Translate",
    },
  },

  opts = {},

  config = function(_, opts) require("pantran").setup(opts) end,
}
