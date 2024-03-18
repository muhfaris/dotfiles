return {
  n = {
    ["<A-k>"] = { "<cmd>m .-2<CR>", desc = "Move line up" },
    ["<A-j>"] = { "<cmd>m .+1<CR>", desc = "Move line down" },
    ["<leader>sh"] = { "<cmd>:split<CR>", desc = "Split horizontal" },
    ["<leader>sv"] = { "<cmd>:vsplit<CR>", desc = "Split vertical" },
    ["<leader>lgi"] = { "<cmd>:GoImplements<CR>", desc = "GoImplements" },
    ["<leader>rf"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Replace under cursor" },
    ["yrw"] = { "yiw:s/\\C\\<<C-R>0\\>/", desc = "Replace word under cursor" },
    ["yrW"] = { "yiW:s/\\C\\<<C-R>0\\>/" },
    ["yre"] = { "yie:s/\\C\\<<C-R>0\\>/" },
    ["yrE"] = { "yiE:s/\\C\\<<C-R>0\\>/" },
    ["<leader>cn"] = { "<cmd>:CarbonNow<CR>", desc = "Generate a new snippet to carbon" },
    ["<leader>tl"] = { "<cmd>:Telescope telescope-tabs list_tabs<cr>", desc = "Tab list" },
    ["<leader>pr"] = { "<cmd>:AstroReload<cr>", desc = "Reload config" },
    ["<leader>fs"] = { "<cmd>GetCurrentFunctions<cr>", desc = "Get current function" },

    -- ["<leader>cx"] = { "<cmd>q<CR>", desc = "quit" },
  },
  v = {
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", desc = "move line down" },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", desc = "move line up" },
    ["<c-r>"] = { "hy:%s/<C-R>0//gc<left><left><left>", desc = "replace" },
  },
}
