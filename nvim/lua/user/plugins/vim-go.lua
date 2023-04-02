return {
  {
    "fatih/vim-go",
    build = ":GoUpdateBinaries",
    ft = "go",
    event = "BufEnter *.go",
    config = require "user.plugins.configs.vim-go",
  },
}
