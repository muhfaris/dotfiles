-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = { require("formatter.filetypes.lua").stylua },
		json = { require("formatter.defaults.prettier") },
		yaml = { require("formatter.defaults.prettier") },
		toml = { require("formatter.defaults.prettier") },
		javascript = { require("formatter.defaults.prettier") },
		typescript = { require("formatter.defaults.prettier") },
		typescriptreact = { require("formatter.defaults.prettier") },
		css = { require("formatter.defaults.prettier") },
		html = { require("formatter.defaults.prettier") },
		python = {
			function()
				return {
					exe = "python",
					args = {
						"-m",
						"black",
						"-q",
						"-",
					},
					stdin = true,
				}
			end,
		},

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.cmd([[nnoremap <silent> <leader>f :Format<CR>]])
vim.cmd([[nnoremap <silent> <leader>F :FormatWrite<CR>]])
