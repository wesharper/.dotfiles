return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.sections.lualine_z = opts.sections.lualine_y
    opts.sections.lualine_y = opts.sections.lualine_x
    opts.sections.lualine_x = nil
  end,
}
