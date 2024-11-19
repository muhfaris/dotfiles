return {
  "nvim-telescope/telescope-media-files.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("telescope").load_extension "media_files"
    -- require("telescope").setup {
    --   extensions = {
    --     media_files = {
    --       filetypes = { "png", "webp", "jpg", "jpeg" },
    --       find_cmd = "rg", -- find command (defaults to `fd`)
    --     },
    --   },
    -- }
  end,
}
