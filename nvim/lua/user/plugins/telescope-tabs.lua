return {
  "LukasPietzschmann/telescope-tabs",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope-tabs").setup {
      entry_formatter = function(tab_id, buffer_ids, file_names, file_paths, is_current)
        local entry_string =
          table.concat(vim.tbl_map(function(v) return vim.fn.fnamemodify(v, ":.") end, file_paths), ", ")
        return string.format("%d: %s%s", tab_id, entry_string, is_current and " <" or "")
      end,
    }
  end,
}
