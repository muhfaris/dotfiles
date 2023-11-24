return function(_, opts)
  local telescope = require "telescope"
  telescope.setup {
    opts,
    file_ignore_patterns = {
      "node_modules",
      "vendor",
      "tags",
    },
  }
  local utils = require "astronvim.utils"
  local conditional_func = utils.conditional_func
  conditional_func(telescope.load_extension, pcall(require, "notify"), "notify")
  conditional_func(telescope.load_extension, pcall(require, "aerial"), "aerial")
  -- To get telescope-file-browser loaded and working with telescope,
  -- you need to call load_extension, somewhere after setup function:
  conditional_func(telescope.load_extension, utils.is_available "telescope-fzf-native.nvim", "fzf")
end

-- default mapping
-- <c-x> Go to file selection as a split
-- <c-v> Go to file selection as a vsplit
-- <c-t> Go to a file in a new tab
-- <c-u> Scroll up in preview window
-- <c-d> Scroll down in preview window
