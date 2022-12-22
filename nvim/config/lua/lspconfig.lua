-- config automaticaly with mason-lsp
vim.o.updatetime = 250
vim.cmd([[autocmd! CursorHold, CursorHoldI * lua.diagnostic.open_float(nil, {focus=false})]])
