return {
  "theHamsta/nvim-dap-virtual-text",
  config = function(_, opts)
    require("nvim-dap-virtual-text").setup {
      virt_lines = true,
      all_frames = true,
      highlight_changed_variables = true,
    }
  end,
}
