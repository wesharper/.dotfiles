return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "catppuccin",
    cond = vim.fn.system("uname") == "Darwin",
  },
}
