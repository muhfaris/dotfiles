return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = { "nvim-neotest/neotest-go" },
  opts = function(_, opts)
    if not opts.adapters then opts.adapters = {} end
    table.insert(opts.adapters, require "neotest-go"(require("astrocore").plugin_opts "neotest-go"))
  end,
}
