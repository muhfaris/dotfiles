return {
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable-next-line: missing-fields
      config = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                ST1003 = true,
                fieldalignment = false,
                fillreturns = true,
                nilness = true,
                nonewvars = true,
                shadow = true,
                undeclaredname = true,
                unreachable = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              codelenses = {
                gc_details = true, -- Show a code lens toggling the display of gc's choices.
                generate = true, -- show the `go generate` lens.
                regenerate_cgo = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              buildFlags = { "-tags", "integration" },
              completeUnimported = true,
              diagnosticsDelay = "500ms",
              gofumpt = true,
              matcher = "Fuzzy",
              semanticTokens = true,
              staticcheck = true,
              symbolMatcher = "fuzzy",
              usePlaceholders = true,
            },
          },
        },
      },
    },
  },
  -- Golang support
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed =
          require("astrocore").list_insert_unique(opts.ensure_installed, { "go", "gomod", "gosum", "gowork" })
      end
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(
        opts.ensure_installed,
        { "gomodifytags", "iferr", "impl", "gotests", "goimports" }
      )
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "gopls" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(
        opts.ensure_installed,
        { "delve", "gopls", "gomodifytags", "gotests", "iferr", "impl", "goimports" }
      )
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
      {
        "jay-babu/mason-nvim-dap.nvim",
        optional = true,
        opts = function(_, opts)
          opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "delve" })
        end,
      },
    },
    opts = {},
  },
  {
    "fatih/vim-go",
    build = ":GoUpdateBinaries",
    ft = "go",
    event = "BufEnter *.go",
    dependencies = {
      "junegunn/fzf",
    },
    config = function(_, opts)
      vim.g["go_doc_balloon"] = 1
      vim.g["go_doc_popup_window"] = 1
      vim.g["go_term_enabled"] = 1
      vim.g["go_addtags_skip_unexported"] = 1
      vim.g["go_highlight_operators"] = 1
      vim.g["go_highlight_functions"] = 1
      vim.g["go_highlight_function_parameters"] = 1
      vim.g["go_highlight_function_calls"] = 1
      vim.g["go_highlight_fields"] = 1
      vim.g["go_highlight_diagnostic_errors"] = 1
      vim.g["go_doc_keywordprg_enabled"] = 0
    end,
  },
  -- {
  --   "olexsmir/gopher.nvim",
  --   ft = "go",
  --   build = function()
  --     if not require("lazy.core.config").spec.plugins["mason.nvim"] then
  --       vim.print "Installing go dependencies..."
  --       vim.cmd.GoInstallDeps()
  --     end
  --   end,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     { "williamboman/mason.nvim", optional = true }, -- by default use Mason for go dependencies
  --   },
  --   opts = {},
  -- },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = { "nvim-neotest/neotest-go", config = function() end },
    opts = function(_, opts)
      if not opts.adapters then opts.adapters = {} end
      table.insert(opts.adapters, require "neotest-go"(require("astrocore").plugin_opts "neotest-go"))
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { "goimports", lsp_format = "last" },
      },
    },
  },
  {
    "echasnovski/mini.icons",
    optional = true,
    opts = {
      file = {
        [".go-version"] = { glyph = "", hl = "MiniIconsBlue" },
      },
      filetype = {
        gotmpl = { glyph = "󰟓", hl = "MiniIconsGrey" },
      },
    },
  },
}