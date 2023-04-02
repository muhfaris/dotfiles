return {
  "mfussenegger/nvim-dap",
  enabled = vim.fn.has "win32" == 0,
  dependencies = {
    {
      "jay-babu/mason-nvim-dap.nvim",
      dependencies = { "nvim-dap" },
      cmd = { "DapInstall", "DapUninstall" },
      opts = { automatic_setup = true, ensure_installed = { "delve" } },
      config = require "user.plugins.configs.mason-nvim-dap",
    },
    -- {
    --   "rcarriga/nvim-dap-ui",
    --   opts = { floating = { border = "rounded" } },
    --   config = require "user.plugins.configs.nvim-dap-ui",
    -- },
  },
}
