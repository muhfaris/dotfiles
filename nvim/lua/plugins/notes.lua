return {
  "muhfaris/notes.nvim",
  config = function()
    require("notes").setup {
      notes_dir = "/home/muhfaris/.notes",
      keymaps = {
        n = {
          ["<leader><leader>nc"] = "new",
          ["<leader><leader>nl"] = "list",
          ["<leader><leader>npi"] = "paste_image",
        },
      },
    }
  end,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
}
