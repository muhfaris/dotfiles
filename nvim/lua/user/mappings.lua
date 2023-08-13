return {
  n = {
    ["<A-k>"] = { "<cmd>m .-2<CR>", desc = "move line up" },
    ["<A-j>"] = { "<cmd>m .+1<CR>", desc = "move line down" },
    ["<leader>sh"] = { "<cmd>:split<CR>", desc = "split horizontal" },
    ["<leader>sv"] = { "<cmd>:vsplit<CR>", desc = "split vertical" },
    ["<leader>lgi"] = { "<cmd>:GoImplements<CR>", desc = "GoImplements" },
    ["<leader>rf"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "replace under cursor" },
    ["yrw"] = { "yiw:s/\\C\\<<C-R>0\\>/" },
    ["yrW"] = { "yiW:s/\\C\\<<C-R>0\\>/" },
    ["yre"] = { "yie:s/\\C\\<<C-R>0\\>/" },
    ["yrE"] = { "yiE:s/\\C\\<<C-R>0\\>/" },
    ["<leader>cn"] = { "<cmd>:CarbonNow<CR>", desc = "generate a new snippet to carbon" },
    -- ["<leader>cx"] = { "<cmd>q<CR>", desc = "quit" },
  },
  v = {
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", desc = "move line down" },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", desc = "move line up" },
    ["<c-r>"] = { "hy:%s/<C-R>0//gc<left><left><left>", desc = "replace" },
  },
}
