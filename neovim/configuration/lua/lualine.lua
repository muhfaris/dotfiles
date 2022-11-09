require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "dracula-nvim",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},

	--- example data
	---+-------------------------------------------------+
	---| A | B | C                             X | Y | Z |
	---+-------------------------------------------------+
	sections = {
		lualine_a = { "mode" },
		lualine_b = { {
			"branch",
			"diff",
			"diagnostics",
			sources = { "nvim" },
		} },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location", "tabs" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = { "diagnostics" },
		lualine_c = { { "filename", file_status = true, path = 2 } },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = { "fugitive" },
})
