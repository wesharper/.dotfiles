return {
  "LazyVim/LazyVim",
  opts = function(_, opts)
    if vim.fn.system("uname") == "Darwin" then
      opts.colorscheme = "catppuccin"
    end
    return opts
  end,
}
