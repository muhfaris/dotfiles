local theme = {
	fill = "TabLineFill",
	-- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
	head = "TabLine",
	current_tab = "TabLineSel",
	tab = "TabLine",
	win = "TabLine",
	tail = "TabLine",
}
require("tabby.tabline").set(function(line)
	return {
		line.tabs().foreach(function(tab)
			local hl = tab.is_current() and theme.current_tab or theme.tab
			return {
				tab.is_current() and "" or "",
				tab.number(),
				tab.name(),
				line.sep("", hl, theme.fill),
				hl = hl,
				margin = " ",
			}
		end),
		line.spacer(),
		hl = theme.fill,
	}
end)

vim.api.nvim_set_keymap("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>to", ":tabonly<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabn<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabp<CR>", { noremap = true })
-- move current tab to previous position
vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- move current tab to next position
vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })
