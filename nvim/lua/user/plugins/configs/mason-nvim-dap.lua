local dap = require "dap"

return function(_, opts)
  local mason_nvim_dap = require "mason-nvim-dap"

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

  mason_nvim_dap.setup {
    ensure_installed = { "delve" },
    automatic_installation = true,
    handlers = {
      -- function(config) require("mason-nvim-dap").default_setup(config) end,
      -- go = function(config)
      --   config.adapters {
      --     {
      --       type = "delve",
      --       mode = "debug",
      --       name = "Debug (Arguments)",
      --       request = "launch",
      --       program = "${workspaceFolder}/main.go",
      --       args = get_arguments,
      --     },
      --   }
      --
      --   require("mason-nvim-dap").default_setup(config) -- don't forget this!
      -- end,
      delve = function(config)
        dap.adapters.delve = {
          type = "server",
          port = "${port}",
          executable = {
            command = vim.fn.stdpath "data" .. "/mason/bin/dlv",
            -- command = "/home/muhfaris/go/bin/dlv",
            args = { "dap", "-l", "127.0.0.1:${port}" },
          },
        }

        dap.configurations.go = {
          {
            type = "delve",
            name = "Delve main.go: Debug",
            request = "launch",
            program = "${workspaceFolder}/main.go",
          },
          -- {
          --   type = "delve",
          --   name = "Delve: Debug test", -- configuration for debugging test files
          --   request = "launch",
          --   mode = "test",
          --   program = "${file}",
          -- },
          -- -- works with go.mod packages and sub packages
          -- {
          --   type = "delve",
          --   name = "Delve: Debug test (go.mod)",
          --   request = "launch",
          --   mode = "test",
          --   program = "./${relativeFileDirname}",
          -- },
          {
            type = "delve",
            mode = "debug",
            name = "Debug (Arguments)",
            request = "launch",
            program = "${workspaceFolder}/main.go",
            args = get_arguments,
          },
        }

        require("mason-nvim-dap").default_setup(config) -- don't forget this!
      end,
    },
  }

  -- mason_nvim_dap.default_setup {
  --   function(source_name)
  --     -- Keep original functionality of `automatic_setup = true`
  --     require "mason-nvim-dap.automatic_setup" (source_name)
  --   end,
  --   delve = function(source_name)
  --     dap.adapters.delve = {
  --       type = "server",
  --       port = "${port}",
  --       executable = {
  --         command = vim.fn.stdpath "data" .. "/mason/bin/dlv",
  --         args = { "dap", "-l", "127.0.0.1:${port}" },
  --       },
  --     }
  --
  --     dap.configurations.go = {
  --       {
  --         type = "delve",
  --         name = "Delve: Debug",
  --         request = "launch",
  --         program = "${file}",
  --       },
  --       {
  --         type = "delve",
  --         name = "Delve: Debug test", -- configuration for debugging test files
  --         request = "launch",
  --         mode = "test",
  --         program = "${file}",
  --       },
  --       -- works with go.mod packages and sub packages
  --       {
  --         type = "delve",
  --         name = "Delve: Debug test (go.mod)",
  --         request = "launch",
  --         mode = "test",
  --         program = "./${relativeFileDirname}",
  --       },
  --       {
  --         type = "delve",
  --         mode = "debug",
  --         name = "Debug (Arguments)",
  --         request = "launch",
  --         program = "${workspaceFolder}/main.go",
  --         args = get_arguments,
  --         -- args = function()
  --         --   local args = vim.fn.input "Args: "
  --         --   if args == "" then
  --         --     return nil
  --         --   else
  --         --     return vim.split(args, " ", { trimempty = true })
  --         --   end
  --         -- end,
  --       },
  --     }
  --   end,
  -- }
end
