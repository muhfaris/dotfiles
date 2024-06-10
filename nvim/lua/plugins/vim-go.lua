return {
  {
    "fatih/vim-go",
    build = ":GoUpdateBinaries",
    ft = "go",
    event = "BufEnter *.go",
  },
}
