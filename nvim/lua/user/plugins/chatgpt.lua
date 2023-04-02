return {
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      local function setupChatGPT()
        require("chatgpt").setup {
          keymaps = {
            close = { "<C-q>" },
            submit = "<C-a>",
            -- yank_last = "<C-y>",
            --     scroll_up = "<C-k>",
            --     scroll_down = "<C-j>",
            --     toggle_settings = "<C-t>",
            --     new_session = "<C-n>",
            --     cycle_windows = "<C-c>",
            --     -- in the Sessions pane
            --     select_session = "<S-s>",
            --     rename_session = "<S-r>",
            --     delete_session = "<S-d>",
          },
        }
      end
      if string.len(vim.env.OPENAI_API_KEY or "") < 1 then
        local config = require "user.plugins.configs.chatgpt"

        if not config or not config.apiKey or #config.apiKey < 1 then
          vim.notify(string.format("Invalid OPENAI_API_KEY value in config file: %s", config), vim.log.levels["ERROR"])
          return
        end

        vim.env.OPENAI_API_KEY = config.apiKey
        vim.loop.os_setenv("OPENAI_API_KEY", config.apiKey)
        setupChatGPT()
      else
        setupChatGPT()
      end
    end,
    dependencies = {
      {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
      },
    },
    lazy = false,
  },
}
