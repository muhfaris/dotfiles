-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins
local function get_arguments()
  local co = coroutine.running()
  if co then
    coroutine.wrap(function()
      local args = {}
      vim.ui.input({ prompt = "Args: " }, function(input)
        args = vim.split(input or "", " ", { trimempty = true })
        coroutine.resume(co, args)
      end)
    end)()
    return coroutine.yield()
  else
    local args = {}
    vim.ui.input({ prompt = "Args: " }, function(input) args = vim.split(input or "", " ", { trimempty = true }) end)
    return args
  end
end

local go_configurations = {
  {
    type = "delve",
    name = "Debug: Arguments",
    request = "launch",
    program = "${workspaceFolder}/main.go",
    args = get_arguments,
  },
  {
    type = "delve",
    request = "attach",
    name = "Debug: Attach",
    processId = require("dap.utils").pick_process,
    cwd = "${workspaceFolder}",
  },
}

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "gopls",
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "stylua",
        -- add more arguments for adding more null-ls sources
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "python",
        "delve",
        -- add more arguments for adding more debuggers
      })
      opts.automatic_installation = true
      opts.handlers = {
        delve = function(config)
          local dap = require "dap"
          dap.adapters.delve = {
            type = "server",
            port = "${port}",
            executable = {
              command = vim.fn.stdpath "data" .. "/mason/bin/dlv",
              args = {
                "dap",
                "-l",
                "127.0.0.1:${port}",
                "--allow-non-terminal-interactive=true",
              },
            },
          }

          if not dap.configurations.go then
            dap.configurations.go = go_configurations
          else
            require("astrocore").extend_tbl(dap.configurations.go, go_configurations)
          end
          require("mason-nvim-dap").default_setup(config)
        end,
      }
    end,
  },
  -- {
  --   "mfussenegger/nvim-dap",
  --   enabled = vim.fn.has "win32" == 0,
  --   dependencies = {
  --     {
  --       "jay-babu/mason-nvim-dap.nvim",
  --       dependencies = { "nvim-dap" },
  --       cmd = { "DapInstall", "DapUninstall" },
  --       opts = { automatic_setup = true, ensure_installed = { "delve" } },
  --       config = function(_, opts)
  --         local mason_nvim_dap = require "mason-nvim-dap"
  --         local dap = require "dap"
  --         mason_nvim_dap.setup {
  --           ensure_installed = { "delve" },
  --           automatic_installation = true,
  --           handlers = {
  --             delve = function(config)
  --               dap.adapters.delve = {
  --                 type = "server",
  --                 port = "${port}",
  --                 executable = {
  --                   command = vim.fn.stdpath "data" .. "/mason/bin/dlv",
  --                   args = { "dap", "-l", "127.0.0.1:${port}" },
  --                 },
  --               }
  --
  --               dap.configurations.go = {
  --                 {
  --                   type = "delve",
  --                   name = "Delve main.go: Debug",
  --                   request = "launch",
  --                   program = "${workspaceFolder}/main.go",
  --                 },
  --                 {
  --                   type = "delve",
  --                   mode = "debug",
  --                   name = "Debug (Arguments)",
  --                   request = "launch",
  --                   program = "${workspaceFolder}/main.go",
  --                   args = get_arguments,
  --                 },
  --               }
  --
  --               require("mason-nvim-dap").default_setup(config) -- don't forget this!
  --             end,
  --           },
  --         }
  --       end,
  --     },
  --   },
  -- },
}
