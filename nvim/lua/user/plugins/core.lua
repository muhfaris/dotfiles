return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "       .-.      _______                   .  '  *   .  . '",
        "      {}``; |==|_______D                    .  * * -+-  ",
        "      / ('        /|\\                   .    * .    '  *",
        "  (  /  |        / | \\                      * .  ' .  . ",
        "   \\(_)_]]      /  |  \\                  *   *  .   .",
        "                                                     '   *",
      }
      return opts
    end,
  },
}
