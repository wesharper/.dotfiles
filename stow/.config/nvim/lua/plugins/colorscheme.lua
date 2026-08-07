return {
  {
    "RRethy/base16-nvim",
    config = function()
      vim.cmd("colorscheme base16-catppuccin")
      local ok, matugen = pcall(require, "matugen")
      if ok then
        matugen.setup()
      end
    end,
  },
}
