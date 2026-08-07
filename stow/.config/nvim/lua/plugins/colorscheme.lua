return {
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      if vim.uv.os_uname().sysname == "Darwin" then
        opts.colorscheme = "catppuccin"
      end
      return opts
    end,
  },
  {
    "RRethy/base16-nvim",
    config = function()
      local ok, matugen = pcall(require, "matugen")
      if ok then
        matugen.setup()
      end
    end,
  },
}
