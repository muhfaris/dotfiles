return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>tl"] = {
            function() require("telescope-tabs").list_tabs() end,
            desc = "List tab",
          },
          ["<Leader>pl"] = {
            -- <c-d>	delete currently selected project
            -- <c-v>	rename currently selected project
            -- <c-a>	create a project*
            -- <c-s>	search inside files within your project
            -- <c-b>	browse inside files within your project
            -- <c-l>	change to the selected project's directory without opening it
            -- <c-r>	find a recently opened file within your project
            -- <c-f>	find a file within your project (same as <CR>)
            -- <c-o>	change current cd scope

            function()
              require("telescope").extensions.project.project {
                base_dirs = {
                  "~/Documents/projects/sourcecode/src",
                },
              }
            end,
            desc = "List project",
          },
          ["<C-j>"] = {
            function()
              local moveline = require "moveline"
              moveline.down()
            end,
            desc = "Move line down",
          },
          ["<C-k>"] = {
            function()
              local moveline = require "moveline"
              moveline.up()
            end,
            desc = "Move line up",
          },
        },
        v = {
          ["<C-j>"] = {
            function()
              local moveline = require "moveline"
              moveline.block_down()
            end,
            desc = "Move line down",
          },
          ["<C-k>"] = {
            function()
              local moveline = require "moveline"
              moveline.block_up()
            end,
            desc = "Move line up",
          },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
