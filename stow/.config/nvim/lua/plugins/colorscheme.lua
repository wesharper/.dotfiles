if vim.fn.system("uname") == "Darwin" then
  return {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  }
else
  return {}
end
