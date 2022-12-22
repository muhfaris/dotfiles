require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")
local opts = { noremap = true, silent = true, theme = "dropdown" }

vim.keymap.set("n", "<leader>ff", builtin.find_files, {}, opts)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}, opts)
vim.keymap.set("n", "<leader>fb", builtin.buffers, {}, opts)
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}, opts)
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>fr",':NeoTreeFloatToggle<cr>' )

--- Mapping
--<C-n> Down
--<C-p> Up
--
-- Split
-- <C-x> a split
-- <C-v> a vsplit
-- <C-t> tab
